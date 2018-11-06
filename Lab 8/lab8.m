%% Lab 8: Frequency Response of different Windows
% *Author*: Himanshu Sharma
% *Roll Number*: 1610110149
% *Email ID*: hs583@snu.edu.in
% *Instructor*: Prof. Vijay K. Chakka

%% Main Namespace
function main() 
    clc;
    [n1, w1] = rectangular_window(61);
    [n2, w2] = hamming_window(0.5, 61);
    [n3, w3] = hamming_window(0.54, 61);
    [n4, w4] = barlett_window(61);
    [n5, w5] = blackman_window(61);
    [n6, w6] = last_window(pi/4, 61);
    
    %% Window Plots
    figure;
    hold on;
    grid on;
    plot(n1, w1);
    plot(n2, w2);
    plot(n3, w3);
    plot(n4, w4);
    plot(n5, w5);
    plot(n6, w6);
    legend('Rectangular Window', 'Hamming Window $\alpha=0.5$', 'Hamming Window $\alpha=0.54$', 'Barlett Window', 'Blackman Window', 'Sinc Window', 'location', 'northwest', 'interpreter', 'latex');
    xlabel('$n$', 'interpreter', 'latex');
    title('Window Functions');
    ylabel('Window amplitude');
    
    %% Frequency Response of the Windows
    %% Rectangular Window
    [h1, o1] = freqz(w1);
    figure;
    subplot(2,1,1);
    plot(o1, abs(h1));
    grid on;
    title('Magnitude Response of Rectangular Window', 'interpreter', 'latex');
    xlabel('Frequency $\omega$', 'interpreter', 'latex');
    ylabel('$|H(e^{j \omega})|$', 'interpreter', 'latex');
    subplot(2,1,2);
    plot(o1, angle(h1));
    grid on;
    title('Phase Response of Rectangular Window', 'interpreter', 'latex');
    xlabel('Frequency $\omega$', 'interpreter', 'latex');
    ylabel('$\angle H(e^{j \omega})$', 'interpreter', 'latex');
    
    %% Hamming Windows
    
    % alpha is 0.5
    [h2, o2] = freqz(w2);
    figure;
    subplot(2,1,1);
    plot(o2, abs(h2));
    grid on;
    title('Magnitude Response of Hamming Window with $\alpha=0.5$', 'interpreter', 'latex');
    xlabel('Frequency $\omega$', 'interpreter', 'latex');
    ylabel('$|H(e^{j \omega})|$', 'interpreter', 'latex');
    subplot(2,1,2);
    plot(o2, angle(h2));
    grid on;
    title('Phase Response of Hamming Window with $\alpha=0.5$', 'interpreter', 'latex');
    xlabel('Frequency $\omega$', 'interpreter', 'latex');
    ylabel('$\angle H(e^{j \omega})$', 'interpreter', 'latex');
    
    % alpha is 0.54
    [h3, o3] = freqz(w3);
    figure;
    subplot(2,1,1);
    plot(o3, abs(h3));
    grid on;
    title('Magnitude Response of Hamming Window with $\alpha=0.54$', 'interpreter', 'latex');
    xlabel('Frequency $\omega$', 'interpreter', 'latex');
    ylabel('$|H(e^{j \omega})|$', 'interpreter', 'latex');
    subplot(2,1,2);
    plot(o3, angle(h3));
    grid on;
    title('Phase Response of Hamming Window with $\alpha=0.54$', 'interpreter', 'latex');
    xlabel('Frequency $\omega$', 'interpreter', 'latex');
    ylabel('$\angle H(e^{j \omega})$', 'interpreter', 'latex');
    
    %% Barlett Window
    [h4, o4] = freqz(w4);
    figure;
    subplot(2,1,1);
    plot(o4, abs(h4));
    grid on;
    title('Magnitude Response of Barlett Window', 'interpreter', 'latex');
    xlabel('Frequency $\omega$', 'interpreter', 'latex');
    ylabel('$|H(e^{j \omega})|$', 'interpreter', 'latex');
    subplot(2,1,2);
    plot(o4, angle(h4));
    grid on;
    title('Phase Response of Barlett Window', 'interpreter', 'latex');
    xlabel('Frequency $\omega$', 'interpreter', 'latex');
    ylabel('$\angle H(e^{j \omega})$', 'interpreter', 'latex');
    
    %% Blackman Window
    [h5, o5] = freqz(w5);
    figure;
    subplot(2,1,1);
    plot(o5, abs(h5));
    grid on;
    title('Magnitude Response of Blackman Window', 'interpreter', 'latex');
    xlabel('Frequency $\omega$', 'interpreter', 'latex');
    ylabel('$|H(e^{j \omega})|$', 'interpreter', 'latex');
    subplot(2,1,2);
    plot(o5, angle(h5));
    grid on;
    title('Phase Response of Blackman Window', 'interpreter', 'latex');
    xlabel('Frequency $\omega$', 'interpreter', 'latex');
    ylabel('$\angle H(e^{j \omega})$', 'interpreter', 'latex');
    
    %% Sinc Window
    [h6, o6] = freqz(w6);
    figure;
    subplot(2,1,1);
    plot(o6, abs(h6));
    grid on;
    title('Magnitude Response of Sinc Window', 'interpreter', 'latex');
    xlabel('Frequency $\omega$', 'interpreter', 'latex');
    ylabel('$|H(e^{j \omega})|$', 'interpreter', 'latex');
    subplot(2,1,2);
    plot(o6, angle(h6));
    grid on;
    title('Phase Response of Sinc Window', 'interpreter', 'latex');
    xlabel('Frequency $\omega$', 'interpreter', 'latex');
    ylabel('$\angle H(e^{j \omega})$', 'interpreter', 'latex');
    
    %% All in one plot for the frequency response.
    figure;
    hold on;
    grid on;
    plot(o1, abs(h1));
    plot(o2, abs(h2));
    plot(o3, abs(h3));
    plot(o4, abs(h4));
    plot(o5, abs(h5));
    plot(o6, abs(h6));
    legend('Rectangular window', 'Hamming window with $\alpha=0.5$', 'Hamming window with $\alpha=0.54$', 'Barlett window', 'Blackman window', 'Sinc window', 'interpreter', 'latex', 'Location', 'northeast');
    xlabel('Frequency $\omega$', 'interpreter', 'latex');
    ylabel('$|H(e^{j \omega})|$', 'interpreter', 'latex');
    title('All in one Magnitude Response');
    
    %% Rectangular Window Function
    function [n, output] = rectangular_window(N)
       % generates a rectangular window of magnitude 1 when n is in range 0 and N - 1.
       output = [];
       n = -2*N:2*N;
       for i = 1:length(n)
           if n(i) >= 0 && n(i) <= N-1
              output = [output 1]; 
           else
              output = [output 0];
           end
       end
    end
    
    %% Hamming Window Function
    function [time, output]=hamming_window(alpha, N);
       % generates a generalized hamming window where, alpha >= 0.5 and n is in range 0 to N-1.
       time = -2*N:2*N;
       output = [];
       if alpha >= 0.5
          for i=1:length(time)
              if time(i) >=0 && time(i) <= N-1
                  output = [output, alpha - (1-alpha)*cos(2*pi*time(i)/(N-1))];
              else
                  output = [output, 0];
              end
          end
       end
    end
    
    %% Barlett Window Function
    function [n, output]=barlett_window(N)
        n = -2*N:2*N;
        output = [];
        
        for i=1:length(n)
           if n(i) >= 0 && n(i) <= (N-1)/2
               output = [output 2*n(i)/(N-1)];
           else
               if n(i) > (N-1)/2 && n(i) <= N
                  output = [output 2-(2*n(i)/(N-1))];
               else
                   output = [output 0];
               end
           end
        end
    end

    %% Blackman Window Function
    function [n, output]=blackman_window(N)
       n = -2*N : 2*N;
       output = [];
       
       for i=1:length(n)
           if n(i) >= 0 && n(i) <= N-1
                output = [output 0.42-0.5*cos(2*pi*n(i)/(N-1))+0.08*cos(4*pi*n(i)/(N-1))]; 
           else
               output = [output 0];
           end
       end
    end

    %% Sinc Window Function
    function [n, output]=last_window(Wc, N)
       n = -2*N:2*N;
       output =[];
       
       for i=1:length(n)
            if n(i) == 0
                output = [output Wc/pi];
            else
                if abs(n(i)) <= 30
                    output = [output (Wc/pi)*(sin(Wc*n(i))/(Wc*n(i)))];
                else
                    output = [output 0];
                end
            end
       end
    end

end