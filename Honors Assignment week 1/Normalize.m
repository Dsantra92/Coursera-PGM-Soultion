## Copyright (C) 2020 Deeptendu Santra
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## Author: Deeptendu Santra <deebyo@Kronos>
## Created: 2020-10-12

function F = Normalize (F,E)
    for i = 1:size(E,1)
      
      v = E(i,1);
      x = E(i,2);
      
      indx = find(F.var == v);
      if ~isempty(indx)
        Ass = IndexToAssignment(1:prod(F.card),F.card);
        index = 1:length(F.val);
        index = index(Ass(:,indx)==x);
        F.val(index) = F.val(index)/sum(F.val(index));
      endif
      
    endfor

endfunction
