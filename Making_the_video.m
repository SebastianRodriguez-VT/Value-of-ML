%% Draw video
figure
set(gca,'xlim',[0,10])
set(gca,'ytick',0:5)
set(gca,'ylim',[0,5])

interferer  = action_mistakes(2,1:5);
choice_made = action_mistakes(2,6:10);
for i = 1:5
    if interferer(i) == 1 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer(i) == 1 && choice_made(i) == 0
        rectangle('Position',[0 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer(i) == 0 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end  
    
end




%%% 2nd frame
figure
set(gca,'xlim',[0,10])
set(gca,'ytick',0:5)
set(gca,'ylim',[0,5])


interferer2  = action_mistakes(3,1:5);
choice_made2 = action_mistakes(3,6:10);

for i = 1:5
    if interferer(i) == 1 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer(i) == 1 && choice_made(i) == 0
        rectangle('Position',[1 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer(i) == 0 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end  
    
end
for i = 1:5
    if interferer2(i) == 1 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer2(i) == 1 && choice_made2(i) == 0
        rectangle('Position',[0 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer2(i) == 0 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end





%%% 3rd frame
figure
set(gca,'xlim',[0,10])
set(gca,'ytick',0:5)
set(gca,'ylim',[0,5])

interferer3  = action_mistakes(4,1:5);
choice_made3 = action_mistakes(4,6:10);

for i = 1:5
    if interferer(i) == 1 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer(i) == 1 && choice_made(i) == 0
        rectangle('Position',[2 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer(i) == 0 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end  
    
end
for i = 1:5
    if interferer2(i) == 1 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer2(i) == 1 && choice_made2(i) == 0
        rectangle('Position',[1 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer2(i) == 0 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer3(i) == 1 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer3(i) == 1 && choice_made3(i) == 0
        rectangle('Position',[0 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer3(i) == 0 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end





%%% 4th frame
figure
set(gca,'xlim',[0,10])
set(gca,'ytick',0:5)
set(gca,'ylim',[0,5])

interferer4  = action_mistakes(5,1:5);
choice_made4 = action_mistakes(5,6:10);

for i = 1:5
    if interferer(i) == 1 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer(i) == 1 && choice_made(i) == 0
        rectangle('Position',[3 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer(i) == 0 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end  
    
end
for i = 1:5
    if interferer2(i) == 1 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer2(i) == 1 && choice_made2(i) == 0
        rectangle('Position',[2 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer2(i) == 0 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer3(i) == 1 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer3(i) == 1 && choice_made3(i) == 0
        rectangle('Position',[1 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer3(i) == 0 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer4(i) == 1 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer4(i) == 1 && choice_made4(i) == 0
        rectangle('Position',[0 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer4(i) == 0 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end




%%% 5th frame
figure
set(gca,'xlim',[0,10])
set(gca,'ytick',0:5)
set(gca,'ylim',[0,5])

interferer5  = action_mistakes(6,1:5);
choice_made5 = action_mistakes(6,6:10);

for i = 1:5
    if interferer(i) == 1 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer(i) == 1 && choice_made(i) == 0
        rectangle('Position',[4 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer(i) == 0 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end  
    
end
for i = 1:5
    if interferer2(i) == 1 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer2(i) == 1 && choice_made2(i) == 0
        rectangle('Position',[3 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer2(i) == 0 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer3(i) == 1 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer3(i) == 1 && choice_made3(i) == 0
        rectangle('Position',[2 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer3(i) == 0 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer4(i) == 1 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer4(i) == 1 && choice_made4(i) == 0
        rectangle('Position',[1 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer4(i) == 0 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer5(i) == 1 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer5(i) == 1 && choice_made5(i) == 0
        rectangle('Position',[0 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer5(i) == 0 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end


%%% 6th frame
figure
set(gca,'xlim',[0,10])
set(gca,'ytick',0:5)
set(gca,'ylim',[0,5])

interferer6  = action_mistakes(7,1:5);
choice_made6 = action_mistakes(7,6:10);

for i = 1:5
    if interferer(i) == 1 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer(i) == 1 && choice_made(i) == 0
        rectangle('Position',[5 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer(i) == 0 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end  
    
end
for i = 1:5
    if interferer2(i) == 1 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer2(i) == 1 && choice_made2(i) == 0
        rectangle('Position',[4 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer2(i) == 0 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer3(i) == 1 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer3(i) == 1 && choice_made4(i) == 0
        rectangle('Position',[3 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer3(i) == 0 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer4(i) == 1 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer4(i) == 1 && choice_made4(i) == 0
        rectangle('Position',[2 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer4(i) == 0 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer5(i) == 1 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer5(i) == 1 && choice_made5(i) == 0
        rectangle('Position',[1 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer5(i) == 0 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer6(i) == 1 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer6(i) == 1 && choice_made6(i) == 0
        rectangle('Position',[0 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer6(i) == 0 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end



%%% 7th frame
figure
set(gca,'xlim',[0,10])
set(gca,'ytick',0:5)
set(gca,'ylim',[0,5])

interferer7  = action_mistakes(8,1:5);
choice_made7 = action_mistakes(8,6:10);

for i = 1:5
    if interferer(i) == 1 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[6 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer(i) == 1 && choice_made(i) == 0
        rectangle('Position',[6 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer(i) == 0 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[6 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end  
    
end
for i = 1:5
    if interferer2(i) == 1 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer2(i) == 1 && choice_made2(i) == 0
        rectangle('Position',[5 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer2(i) == 0 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer3(i) == 1 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer3(i) == 1 && choice_made3(i) == 0
        rectangle('Position',[4 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer3(i) == 0 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer4(i) == 1 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer4(i) == 1 && choice_made4(i) == 0
        rectangle('Position',[3 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer4(i) == 0 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer5(i) == 1 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer5(i) == 1 && choice_made5(i) == 0
        rectangle('Position',[2 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer5(i) == 0 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer6(i) == 1 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer6(i) == 1 && choice_made6(i) == 0
        rectangle('Position',[1 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer6(i) == 0 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer7(i) == 1 && choice_made7(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer7(i) == 1 && choice_made7(i) == 0
        rectangle('Position',[0 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer7(i) == 0 && choice_made7(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end


%%% 7th frame
figure
set(gca,'xlim',[0,10])
set(gca,'ytick',0:5)
set(gca,'ylim',[0,5])

interferer8  = action_mistakes(9,1:5);
choice_made8 = action_mistakes(9,6:10);

for i = 1:5
    if interferer(i) == 1 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[7 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer(i) == 1 && choice_made(i) == 0
        rectangle('Position',[7 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer(i) == 0 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[7 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end  
    
end
for i = 1:5
    if interferer2(i) == 1 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[6 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer2(i) == 1 && choice_made2(i) == 0
        rectangle('Position',[6 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer2(i) == 0 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[6 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer3(i) == 1 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer3(i) == 1 && choice_made3(i) == 0
        rectangle('Position',[5 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer3(i) == 0 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer4(i) == 1 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer4(i) == 1 && choice_made4(i) == 0
        rectangle('Position',[4 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer4(i) == 0 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer5(i) == 1 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer5(i) == 1 && choice_made5(i) == 0
        rectangle('Position',[3 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer5(i) == 0 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer6(i) == 1 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer6(i) == 1 && choice_made6(i) == 0
        rectangle('Position',[2 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer6(i) == 0 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer7(i) == 1 && choice_made7(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer7(i) == 1 && choice_made7(i) == 0
        rectangle('Position',[1 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer7(i) == 0 && choice_made7(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer8(i) == 1 && choice_made8(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer8(i) == 1 && choice_made8(i) == 0
        rectangle('Position',[0 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer8(i) == 0 && choice_made8(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end



%%% 8th frame
figure
set(gca,'xlim',[0,10])
set(gca,'ytick',0:5)
set(gca,'ylim',[0,5])

interferer9  = action_mistakes(10,1:5);
choice_made9 = action_mistakes(10,6:10);

for i = 1:5
    if interferer(i) == 1 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[8 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer(i) == 1 && choice_made(i) == 0
        rectangle('Position',[8 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer(i) == 0 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[8 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end  
    
end
for i = 1:5
    if interferer2(i) == 1 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[7 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer2(i) == 1 && choice_made2(i) == 0
        rectangle('Position',[7 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer2(i) == 0 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[7 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer3(i) == 1 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[6 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer3(i) == 1 && choice_made3(i) == 0
        rectangle('Position',[6 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer3(i) == 0 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[6 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer4(i) == 1 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer4(i) == 1 && choice_made4(i) == 0
        rectangle('Position',[5 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer4(i) == 0 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer5(i) == 1 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer5(i) == 1 && choice_made5(i) == 0
        rectangle('Position',[4 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer5(i) == 0 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer6(i) == 1 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer6(i) == 1 && choice_made6(i) == 0
        rectangle('Position',[3 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer6(i) == 0 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer7(i) == 1 && choice_made7(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer7(i) == 1 && choice_made7(i) == 0
        rectangle('Position',[2 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer7(i) == 0 && choice_made7(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer8(i) == 1 && choice_made8(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer8(i) == 1 && choice_made8(i) == 0
        rectangle('Position',[1 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer8(i) == 0 && choice_made8(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer9(i) == 1 && choice_made9(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer9(i) == 1 && choice_made9(i) == 0
        rectangle('Position',[0 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer9(i) == 0 && choice_made9(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end


%%% 9th frame
figure
set(gca,'xlim',[0,10])
set(gca,'ytick',0:5)
set(gca,'ylim',[0,5])

interferer10  = action_mistakes(11,1:5);
choice_made10 = action_mistakes(11,6:10);


for i = 1:5
    if interferer(i) == 1 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[9 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer(i) == 1 && choice_made(i) == 0
        rectangle('Position',[9 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer(i) == 0 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[9 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end  
    
end
for i = 1:5
    if interferer2(i) == 1 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[8 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer2(i) == 1 && choice_made2(i) == 0
        rectangle('Position',[8 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer2(i) == 0 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[8 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer3(i) == 1 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[7 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer3(i) == 1 && choice_made3(i) == 0
        rectangle('Position',[7 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer3(i) == 0 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[7 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer4(i) == 1 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[6 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer4(i) == 1 && choice_made4(i) == 0
        rectangle('Position',[6 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer4(i) == 0 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[6 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer5(i) == 1 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer5(i) == 1 && choice_made5(i) == 0
        rectangle('Position',[5 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer5(i) == 0 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer6(i) == 1 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer6(i) == 1 && choice_made6(i) == 0
        rectangle('Position',[4 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer6(i) == 0 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer7(i) == 1 && choice_made7(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer7(i) == 1 && choice_made7(i) == 0
        rectangle('Position',[3 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer7(i) == 0 && choice_made7(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer8(i) == 1 && choice_made8(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer8(i) == 1 && choice_made8(i) == 0
        rectangle('Position',[2 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer8(i) == 0 && choice_made8(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer9(i) == 1 && choice_made9(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer9(i) == 1 && choice_made9(i) == 0
        rectangle('Position',[1 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer9(i) == 0 && choice_made9(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer10(i) == 1 && choice_made10(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer10(i) == 1 && choice_made10(i) == 0
        rectangle('Position',[0 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer10(i) == 0 && choice_made10(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end


%%% 10th frame
figure
set(gca,'xlim',[0,10])
set(gca,'ytick',0:5)
set(gca,'ylim',[0,5])

interferer11  = action_mistakes(12,1:5);
choice_made11 = action_mistakes(12,6:10);


    
for i = 1:5
    if interferer(i) == 1 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[10 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer(i) == 1 && choice_made(i) == 0
        rectangle('Position',[10 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer(i) == 0 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[10 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end  
    
end
for i = 1:5
    if interferer2(i) == 1 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[9 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer2(i) == 1 && choice_made2(i) == 0
        rectangle('Position',[9 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer2(i) == 0 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[9 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer3(i) == 1 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[8 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer3(i) == 1 && choice_made3(i) == 0
        rectangle('Position',[8 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer3(i) == 0 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[8 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer4(i) == 1 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[7 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer4(i) == 1 && choice_made4(i) == 0
        rectangle('Position',[7 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer4(i) == 0 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[7 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer5(i) == 1 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[6 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer5(i) == 1 && choice_made5(i) == 0
        rectangle('Position',[6 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer5(i) == 0 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[6 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer6(i) == 1 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer6(i) == 1 && choice_made6(i) == 0
        rectangle('Position',[5 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer6(i) == 0 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer7(i) == 1 && choice_made7(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer7(i) == 1 && choice_made7(i) == 0
        rectangle('Position',[4 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer7(i) == 0 && choice_made7(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer8(i) == 1 && choice_made8(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer8(i) == 1 && choice_made8(i) == 0
        rectangle('Position',[3 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer8(i) == 0 && choice_made8(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer9(i) == 1 && choice_made9(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer9(i) == 1 && choice_made9(i) == 0
        rectangle('Position',[2 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer9(i) == 0 && choice_made9(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer10(i) == 1 && choice_made10(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer10(i) == 1 && choice_made10(i) == 0
        rectangle('Position',[1 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer10(i) == 0 && choice_made10(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer11(i) == 1 && choice_made11(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer11(i) == 1 && choice_made11(i) == 0
        rectangle('Position',[0 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer11(i) == 0 && choice_made11(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end


%%% 11th frame
figure
set(gca,'xlim',[0,10])
set(gca,'ytick',0:5)
set(gca,'ylim',[0,5])

interferer12  = action_mistakes(13,1:5);
choice_made12 = action_mistakes(13,6:10);


    
for i = 1:5
    if interferer(i) == 1 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[11 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer(i) == 1 && choice_made(i) == 0
        rectangle('Position',[11 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer(i) == 0 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[11 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end  
    
end
for i = 1:5
    if interferer2(i) == 1 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[10 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer2(i) == 1 && choice_made2(i) == 0
        rectangle('Position',[10 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer2(i) == 0 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[10 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer3(i) == 1 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[9 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer3(i) == 1 && choice_made3(i) == 0
        rectangle('Position',[9 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer3(i) == 0 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[9 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer4(i) == 1 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[8 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer4(i) == 1 && choice_made4(i) == 0
        rectangle('Position',[8 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer4(i) == 0 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[8 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer5(i) == 1 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[7 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer5(i) == 1 && choice_made5(i) == 0
        rectangle('Position',[7 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer5(i) == 0 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[7 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer6(i) == 1 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[6 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer6(i) == 1 && choice_made6(i) == 0
        rectangle('Position',[6 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer6(i) == 0 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[6 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer7(i) == 1 && choice_made7(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer7(i) == 1 && choice_made7(i) == 0
        rectangle('Position',[5 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer7(i) == 0 && choice_made7(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer8(i) == 1 && choice_made8(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer8(i) == 1 && choice_made8(i) == 0
        rectangle('Position',[4 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer8(i) == 0 && choice_made8(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer9(i) == 1 && choice_made9(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer9(i) == 1 && choice_made9(i) == 0
        rectangle('Position',[3 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer9(i) == 0 && choice_made9(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer10(i) == 1 && choice_made10(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer10(i) == 1 && choice_made10(i) == 0
        rectangle('Position',[2 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer10(i) == 0 && choice_made10(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer11(i) == 1 && choice_made11(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer11(i) == 1 && choice_made11(i) == 0
        rectangle('Position',[1 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer11(i) == 0 && choice_made11(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer12(i) == 1 && choice_made12(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer12(i) == 1 && choice_made12(i) == 0
        rectangle('Position',[0 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer12(i) == 0 && choice_made12(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% 12th frame
figure
set(gca,'xlim',[0,10])
set(gca,'ytick',0:5)
set(gca,'ylim',[0,5])

interferer13  = action_mistakes(14,1:5);
choice_made13 = action_mistakes(14,6:10);


    
for i = 1:5
    if interferer(i) == 1 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[12 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer(i) == 1 && choice_made(i) == 0
        rectangle('Position',[12 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer(i) == 0 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[12 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end  
    
end
for i = 1:5
    if interferer2(i) == 1 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[11 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer2(i) == 1 && choice_made2(i) == 0
        rectangle('Position',[11 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer2(i) == 0 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[11 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer3(i) == 1 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[10 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer3(i) == 1 && choice_made3(i) == 0
        rectangle('Position',[10 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer3(i) == 0 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[10 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer4(i) == 1 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[9 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer4(i) == 1 && choice_made4(i) == 0
        rectangle('Position',[9 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer4(i) == 0 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[9 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer5(i) == 1 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[8 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer5(i) == 1 && choice_made5(i) == 0
        rectangle('Position',[8 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer5(i) == 0 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[8 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer6(i) == 1 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[7 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer6(i) == 1 && choice_made6(i) == 0
        rectangle('Position',[7 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer6(i) == 0 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[7 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer7(i) == 1 && choice_made7(i) == 1
                  % this first value will move to 10
       rectangle('Position',[6 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer7(i) == 1 && choice_made7(i) == 0
        rectangle('Position',[6 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer7(i) == 0 && choice_made7(i) == 1
                  % this first value will move to 10
       rectangle('Position',[6 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer8(i) == 1 && choice_made8(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer8(i) == 1 && choice_made8(i) == 0
        rectangle('Position',[5 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer8(i) == 0 && choice_made8(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer9(i) == 1 && choice_made9(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer9(i) == 1 && choice_made9(i) == 0
        rectangle('Position',[4 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer9(i) == 0 && choice_made9(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer10(i) == 1 && choice_made10(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer10(i) == 1 && choice_made10(i) == 0
        rectangle('Position',[3 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer10(i) == 0 && choice_made10(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer11(i) == 1 && choice_made11(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer11(i) == 1 && choice_made11(i) == 0
        rectangle('Position',[2 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer11(i) == 0 && choice_made11(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer12(i) == 1 && choice_made12(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer12(i) == 1 && choice_made12(i) == 0
        rectangle('Position',[1 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer12(i) == 0 && choice_made12(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer13(i) == 1 && choice_made13(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer13(i) == 1 && choice_made13(i) == 0
        rectangle('Position',[0 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer13(i) == 0 && choice_made13(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end


%%% 13th frame
figure
set(gca,'xlim',[0,10])
set(gca,'ytick',0:5)
set(gca,'ylim',[0,5])

interferer14  = action_mistakes(15,1:5);
choice_made14 = action_mistakes(15,6:10);


    
for i = 1:5
    if interferer(i) == 1 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[13 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer(i) == 1 && choice_made(i) == 0
        rectangle('Position',[13 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer(i) == 0 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[13 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end  
    
end
for i = 1:5
    if interferer2(i) == 1 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[12 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer2(i) == 1 && choice_made2(i) == 0
        rectangle('Position',[12 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer2(i) == 0 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[12 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer3(i) == 1 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[11 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer3(i) == 1 && choice_made3(i) == 0
        rectangle('Position',[11 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer3(i) == 0 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[11 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer4(i) == 1 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[10 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer4(i) == 1 && choice_made4(i) == 0
        rectangle('Position',[10 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer4(i) == 0 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[10 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer5(i) == 1 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[9 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer5(i) == 1 && choice_made5(i) == 0
        rectangle('Position',[9 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer5(i) == 0 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[9 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer6(i) == 1 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[8 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer6(i) == 1 && choice_made6(i) == 0
        rectangle('Position',[8 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer6(i) == 0 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[8 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer7(i) == 1 && choice_made7(i) == 1
                  % this first value will move to 10
       rectangle('Position',[7 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer7(i) == 1 && choice_made7(i) == 0
        rectangle('Position',[7 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer7(i) == 0 && choice_made7(i) == 1
                  % this first value will move to 10
       rectangle('Position',[7 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer8(i) == 1 && choice_made8(i) == 1
                  % this first value will move to 10
       rectangle('Position',[6 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer8(i) == 1 && choice_made8(i) == 0
        rectangle('Position',[6 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer8(i) == 0 && choice_made8(i) == 1
                  % this first value will move to 10
       rectangle('Position',[6 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer9(i) == 1 && choice_made9(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer9(i) == 1 && choice_made9(i) == 0
        rectangle('Position',[5 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer9(i) == 0 && choice_made9(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer10(i) == 1 && choice_made10(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer10(i) == 1 && choice_made10(i) == 0
        rectangle('Position',[4 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer10(i) == 0 && choice_made10(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer11(i) == 1 && choice_made11(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer11(i) == 1 && choice_made11(i) == 0
        rectangle('Position',[3 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer11(i) == 0 && choice_made11(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer12(i) == 1 && choice_made12(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer12(i) == 1 && choice_made12(i) == 0
        rectangle('Position',[2 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer12(i) == 0 && choice_made12(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer13(i) == 1 && choice_made13(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer13(i) == 1 && choice_made13(i) == 0
        rectangle('Position',[1 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer13(i) == 0 && choice_made13(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer14(i) == 1 && choice_made14(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer14(i) == 1 && choice_made14(i) == 0
        rectangle('Position',[0 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer14(i) == 0 && choice_made14(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end




%%% 15th frame
figure
set(gca,'xlim',[0,10])
set(gca,'ytick',0:5)
set(gca,'ylim',[0,5])

interferer15  = action_mistakes(16,1:5);
choice_made15 = action_mistakes(16,6:10);


    
for i = 1:5
    if interferer(i) == 1 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[14 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer(i) == 1 && choice_made(i) == 0
        rectangle('Position',[14 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer(i) == 0 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[14 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end  
    
end
for i = 1:5
    if interferer2(i) == 1 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[13 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer2(i) == 1 && choice_made2(i) == 0
        rectangle('Position',[13 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer2(i) == 0 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[13 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer3(i) == 1 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[12 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer3(i) == 1 && choice_made3(i) == 0
        rectangle('Position',[12 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer3(i) == 0 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[12 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer4(i) == 1 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[11 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer4(i) == 1 && choice_made4(i) == 0
        rectangle('Position',[11 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer4(i) == 0 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[11 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer5(i) == 1 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[10 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer5(i) == 1 && choice_made5(i) == 0
        rectangle('Position',[10 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer5(i) == 0 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[10 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer6(i) == 1 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[9 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer6(i) == 1 && choice_made6(i) == 0
        rectangle('Position',[9 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer6(i) == 0 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[9 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer7(i) == 1 && choice_made7(i) == 1
                  % this first value will move to 10
       rectangle('Position',[8 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer7(i) == 1 && choice_made7(i) == 0
        rectangle('Position',[8 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer7(i) == 0 && choice_made7(i) == 1
                  % this first value will move to 10
       rectangle('Position',[8 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer8(i) == 1 && choice_made8(i) == 1
                  % this first value will move to 10
       rectangle('Position',[7 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer8(i) == 1 && choice_made8(i) == 0
        rectangle('Position',[7 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer8(i) == 0 && choice_made8(i) == 1
                  % this first value will move to 10
       rectangle('Position',[7 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer9(i) == 1 && choice_made9(i) == 1
                  % this first value will move to 10
       rectangle('Position',[6 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer9(i) == 1 && choice_made9(i) == 0
        rectangle('Position',[6 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer9(i) == 0 && choice_made9(i) == 1
                  % this first value will move to 10
       rectangle('Position',[6 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer10(i) == 1 && choice_made10(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer10(i) == 1 && choice_made10(i) == 0
        rectangle('Position',[5 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer10(i) == 0 && choice_made10(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer11(i) == 1 && choice_made11(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer11(i) == 1 && choice_made11(i) == 0
        rectangle('Position',[4 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer11(i) == 0 && choice_made11(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer12(i) == 1 && choice_made12(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer12(i) == 1 && choice_made12(i) == 0
        rectangle('Position',[3 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer12(i) == 0 && choice_made12(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer13(i) == 1 && choice_made13(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer13(i) == 1 && choice_made13(i) == 0
        rectangle('Position',[2 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer13(i) == 0 && choice_made13(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer14(i) == 1 && choice_made14(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer14(i) == 1 && choice_made14(i) == 0
        rectangle('Position',[1 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer14(i) == 0 && choice_made14(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer15(i) == 1 && choice_made15(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer15(i) == 1 && choice_made15(i) == 0
        rectangle('Position',[0 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer15(i) == 0 && choice_made15(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end








%%% 16th frame
figure
set(gca,'xlim',[0,10])
set(gca,'ytick',0:5)
set(gca,'ylim',[0,5])

interferer16  = action_mistakes(17,1:5);
choice_made16 = action_mistakes(17,6:10);


    
for i = 1:5
    if interferer(i) == 1 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[15 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer(i) == 1 && choice_made(i) == 0
        rectangle('Position',[15 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer(i) == 0 && choice_made(i) == 1
                  % this first value will move to 10
       rectangle('Position',[15 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end  
    
end
for i = 1:5
    if interferer2(i) == 1 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[14 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer2(i) == 1 && choice_made2(i) == 0
        rectangle('Position',[14 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer2(i) == 0 && choice_made2(i) == 1
                  % this first value will move to 10
       rectangle('Position',[14 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer3(i) == 1 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[13 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer3(i) == 1 && choice_made3(i) == 0
        rectangle('Position',[13 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer3(i) == 0 && choice_made3(i) == 1
                  % this first value will move to 10
       rectangle('Position',[13 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer4(i) == 1 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[12 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer4(i) == 1 && choice_made4(i) == 0
        rectangle('Position',[12 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer4(i) == 0 && choice_made4(i) == 1
                  % this first value will move to 10
       rectangle('Position',[12 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer5(i) == 1 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[11 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer5(i) == 1 && choice_made5(i) == 0
        rectangle('Position',[11 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer5(i) == 0 && choice_made5(i) == 1
                  % this first value will move to 10
       rectangle('Position',[11 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer6(i) == 1 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[10 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer6(i) == 1 && choice_made6(i) == 0
        rectangle('Position',[10 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer6(i) == 0 && choice_made6(i) == 1
                  % this first value will move to 10
       rectangle('Position',[10 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer7(i) == 1 && choice_made7(i) == 1
                  % this first value will move to 10
       rectangle('Position',[9 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer7(i) == 1 && choice_made7(i) == 0
        rectangle('Position',[9 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer7(i) == 0 && choice_made7(i) == 1
                  % this first value will move to 10
       rectangle('Position',[9 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer8(i) == 1 && choice_made8(i) == 1
                  % this first value will move to 10
       rectangle('Position',[8 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer8(i) == 1 && choice_made8(i) == 0
        rectangle('Position',[8 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer8(i) == 0 && choice_made8(i) == 1
                  % this first value will move to 10
       rectangle('Position',[8 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer9(i) == 1 && choice_made9(i) == 1
                  % this first value will move to 10
       rectangle('Position',[7 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer9(i) == 1 && choice_made9(i) == 0
        rectangle('Position',[7 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer9(i) == 0 && choice_made9(i) == 1
                  % this first value will move to 10
       rectangle('Position',[7 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer10(i) == 1 && choice_made10(i) == 1
                  % this first value will move to 10
       rectangle('Position',[6 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer10(i) == 1 && choice_made10(i) == 0
        rectangle('Position',[6 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer10(i) == 0 && choice_made10(i) == 1
                  % this first value will move to 10
       rectangle('Position',[6 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer11(i) == 1 && choice_made11(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer11(i) == 1 && choice_made11(i) == 0
        rectangle('Position',[5 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer11(i) == 0 && choice_made11(i) == 1
                  % this first value will move to 10
       rectangle('Position',[5 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer12(i) == 1 && choice_made12(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer12(i) == 1 && choice_made12(i) == 0
        rectangle('Position',[4 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer12(i) == 0 && choice_made12(i) == 1
                  % this first value will move to 10
       rectangle('Position',[4 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer13(i) == 1 && choice_made13(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer13(i) == 1 && choice_made13(i) == 0
        rectangle('Position',[3 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer13(i) == 0 && choice_made13(i) == 1
                  % this first value will move to 10
       rectangle('Position',[3 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer14(i) == 1 && choice_made14(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer14(i) == 1 && choice_made14(i) == 0
        rectangle('Position',[2 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer14(i) == 0 && choice_made14(i) == 1
                  % this first value will move to 10
       rectangle('Position',[2 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer15(i) == 1 && choice_made15(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer15(i) == 1 && choice_made15(i) == 0
        rectangle('Position',[1 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer15(i) == 0 && choice_made15(i) == 1
                  % this first value will move to 10
       rectangle('Position',[1 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end
for i = 1:5
    if interferer16(i) == 1 && choice_made16(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[1 .0 .0], 'EdgeColor', [1, 0, 0])
    end
    if interferer16(i) == 1 && choice_made16(i) == 0
        rectangle('Position',[0 i-1 1 1],'FaceColor',[.0 .0 .0], 'EdgeColor', [0, 0, 0])
    end
    if interferer16(i) == 0 && choice_made16(i) == 1
                  % this first value will move to 10
       rectangle('Position',[0 i-1 1 1],'FaceColor',[0 .0 1], 'EdgeColor', [0, 0, 1])
    end  
    
end




















