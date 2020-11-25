function AppendAllSubdirectories()
%APPENDALLSUBDIRECTORIES Summary of this function goes here
%   Detailed explanation goes here
clc;
    startDir = pwd;
    directories =  getAllSubDirs(startDir);
    cd(startDir);
     for i=1:length(directories)
        addpath(directories{i});
     end
     
  
end


function directories = getAllSubDirs(dir_path)
  
    directories = {};
    
    files = dir(dir_path);
    
    dirFlags = [files.isdir];

    subFolders = files(dirFlags);
  
    for k = 1 : length(subFolders)
        if strcmp(subFolders(k).name,'.')
            continue;
        end
        if strcmp(subFolders(k).name,'..')
            continue;
        end
        if strcmp(subFolders(k).name,'.git')
            continue;
        end
          path = [dir_path,'\',subFolders(k).name];
               
          cd(path);
          
          if isempty( dir('*.m'))
              continue;
          end
          
         directories{length(directories)+1} = path;
         
         directories_ = getAllSubDirs(path);
         
         disp(['path to matlab src code added : ',path]);
         
         for i=1:length(directories_)
             directories{length(directories)+1} = directories_{i};
         end
    end

end

