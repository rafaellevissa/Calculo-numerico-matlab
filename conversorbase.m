%Universidade Federal da Bahia
%Aluno: Rafael Levi Batista Costa
%Lab1 - 14/06/2013

function result = convBase(n,base)
  if (base == 'bin')
      result =  dec2bin(n); 
  else if (base=='hex')
          result= dec2hex(n);
      else if (base=='oct')
              result= dec2base(n,8);
          else
              result = 'base errada';
          end
      end
  end
end
