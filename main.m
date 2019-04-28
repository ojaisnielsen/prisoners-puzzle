clear all;

n_success_smart = 0;
n_success_dumb = 0;

N=1000;
n=2;

parfor essai=1:N
    
    success_smart = true;
    success_dumb = true;
    
    drawers = randperm(n);    
    for prisoner=1:n        
        success_smart = success_smart && Smart(drawers, prisoner, n);
        success_dumb = success_dumb && Dumb(drawers, prisoner, n);
    end
    
    n_success_smart = n_success_smart + success_smart;
    n_success_dumb = n_success_dumb + success_dumb;
    
end

rate_smart = n_success_smart / N;
rate_dumb = n_success_dumb / N;