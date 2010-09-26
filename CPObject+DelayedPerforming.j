//	CPObject+DelayedPerforming.j
//	Evadne Wu at Iridia, 2010
	
	
	
	

@import <Foundation/Foundation.j>





@implementation CPObject (DelayedPerforming)

- (CPTimer) performSelector:(SEL)inSelector withObject:(id)anObject afterDelay:(CPTimeInterval)delayInSeconds {

//	return [CPTimer scheduledTimerWithTimeInterval:delayInSeconds target:self selector:inSelector userInfo:anObject repeats:NO];
	
	setTimeout(/* () */ function  () {

		[self performSelector:inSelector withObject:anObject];

	}, delayInSeconds * 1000);
	
}

@end




