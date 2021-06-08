	{ 
		count++; 
		sum=0; 
		if(NR == 1)
		{
			printf "학번\t이름\t";
                	for (i=3; i<=NF; i++)
                	{
                       		score[i] = 0;
                        	printf "%s\t", $i;
                	}
			printf "총점\t평균\n";
		}
		else
		{
			printf "%d\t%s\t", $1, $2;
			for (i=3; i<=NF; i++)
			{
				sum = sum + $i;
				score[i] = score[i] + $i;
				printf "%d\t", $i;
			}
			avg = sum/3;
                	printf "%d\t%.1f\n", sum, avg;
		}
	}
END	{
		count--;
		printf "  [과목 평균]\t";
		for (i=3; i<=NF; i++)
		{
			score[i] /= count;
			printf "%.1f\t", score[i];
		}
		printf "\n";
}
