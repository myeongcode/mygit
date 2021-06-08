BEGIN	{ printf "학번\t이름\t국어\t영어\t수학\t총점\t평균\n" }
	{ count++;
		if ( count == 1 )
		{ next; }
		kor += $3; eng += $4; mat += $5;
		sum = $3 + $4 + $5
		avg = sum/3;
		printf "%s\t%s\t%d\t%d\t%d\t%d\t%.1f\n", $1, $2, $3, $4, $5, sum, avg;
	}
END	{ if (count>0)
	{
		kor /= count-1;
		eng /= count-1;
		mat /= count-1;
		printf "  [과목 평균]\t%.1f\t%.1f\t%.1f\n", kor, eng, mat;
	}
}
