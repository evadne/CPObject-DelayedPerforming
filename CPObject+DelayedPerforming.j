//	CPObject+DelayedPerforming.j
//	Evadne Wu at Iridia, 2010
	
	
	
	

@import "Foundation/Foundation.j"





@implementation CPObject (DelayedPerforming)

- (CPTimer) performSelector:(SEL)inSelector withObject:(id)anObject afterDelay:(CPTimeInterval)delayInSeconds {

	return [CPTimer scheduledTimerWithTimeInterval:delayInSeconds target:self selector:inSelector userInfo:nil repeats:NO];
	
}

@end




