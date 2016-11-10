###############################################################################
#
#  hindex.rb
#  Jekyll module to calculate scholar indices
#
#  Copyright (c) 2016 Simone Conti
#
#  HIndex is free software: you can redistribute it and/or modify it under the
#  terms of the GNU General Public License as published by the Free Software 
#  Foundation, either version 3 of the License, or (at your option) any later 
#  version.
#
#  Hindex is distributed in the hope that it will be useful, but WITHOUT ANY 
#  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS 
#  FOR A PARTICULAR PURPOSE. See the GNU General Public License for more 
#  details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#  Usage:
#   - To show h-index: {% hindex hindex %}
#   - To show g-index: {% hindex gindex %}
#   - To show i10-index: {% hindex i10index %}
#   - To show the number of publications: {% hindex number %}
#
###############################################################################

module Jekyll
  class HIndex < Liquid::Tag
    require 'csv'
    def render(context)

        # Create a new hash containing a sorted list of papers and the number 
        # of citations. Take citations from _data/citations.csv
        cits = Hash.new
        context.registers[:site].data["citations"].each do |cit|
            if (cits[cit["paper"]])
                cits[cit["paper"]] += 1
            else
                cits[cit["paper"]] = 0
            end
        end

        # Order the hash
        cits = cits.sort_by{|k,v| v}.reverse

        # Get the index to show
        label = @markup.strip

        # Calculate the h-index
        if (label == "hindex") 
            hindex = 0
            cits.each do |t|
                if (t[1] > hindex)  # >= does not work for e.g. 10 10 10 3 
                    hindex += 1
                end
            end
            "#{hindex}"

        # Calculate the g-index
        elsif (label == "gindex")
            gindex = 1
            sumcit = 0
            cits.each do |t|
                sumcit = sumcit + t[1]
                if (sumcit >= gindex*gindex)
                    gindex += 1
                end
            end
            gindex -= 1
            "#{gindex}"

        # Calculate the i10-index
        elsif (label == "i10index")
            iindex = 0
            cits.each do |t|
                if (t[1] >= 10)
                    iindex += 1
                end
            end
            "#{iindex}"

        # Get total number of papers
        elsif (label == "number")
            number = cits.size
            "#{number}"

        else
            "Unknown label #{label}"
        end 
    end
  end
end
 
Liquid::Template.register_tag('hindex', Jekyll::HIndex)

