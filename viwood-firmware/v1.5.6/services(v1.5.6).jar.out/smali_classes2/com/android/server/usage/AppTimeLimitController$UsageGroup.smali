.class public abstract Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
.super Ljava/lang/Object;
.source "AppTimeLimitController.java"


# instance fields
.field public mActives:I

.field public mLastKnownUsageTimeMs:J

.field public mLastUsageEndTimeMs:J

.field public mLimitReachedCallback:Landroid/app/PendingIntent;

.field public mObserved:[Ljava/lang/String;

.field public mObserverAppRef:Ljava/lang/ref/WeakReference;

.field public mObserverId:I

.field public mTimeLimitMs:J

.field public mUsageTimeMs:J

.field public mUserRef:Ljava/lang/ref/WeakReference;

.field public final synthetic this$0:Lcom/android/server/usage/AppTimeLimitController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    .line 267
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverAppRef:Ljava/lang/ref/WeakReference;

    .line 268
    iput p4, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    .line 269
    iput-object p5, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    .line 270
    iput-wide p6, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    .line 271
    iput-object p8, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLimitReachedCallback:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public checkTimeout(J)V
    .locals 5

    .line 357
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    if-nez v0, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    iget-wide v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    iget-wide v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    goto :goto_0

    .line 372
    :cond_1
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/usage/AppTimeLimitController$UserData;->isActive([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    iget-wide v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    sub-long v3, p1, v3

    cmp-long v0, v1, v3

    if-gtz v0, :cond_2

    .line 380
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    .line 381
    iput-wide p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    .line 382
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {p1, p0}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$mpostInformLimitReachedListenerLocked(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    return-void

    .line 385
    :cond_2
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    sub-long/2addr v1, v3

    invoke-static {p1, p0, v1, v2}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$mpostCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 403
    const-string v0, "        Group id="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 405
    const-string v0, " timeLimit="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 407
    const-string v0, " used="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 409
    const-string v0, " lastKnownUsage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 411
    const-string v0, " mActives="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 412
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 413
    const-string v0, " observed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 414
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public noteUsageStart(J)V
    .locals 0

    .line 292
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStart(JJ)V

    return-void
.end method

.method public noteUsageStart(JJ)V
    .locals 4

    .line 297
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    if-nez v0, :cond_1

    .line 303
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastUsageEndTimeMs:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    move-wide p1, v0

    .line 304
    :cond_0
    iput-wide p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    .line 305
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    iget-wide v2, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    sub-long/2addr v0, v2

    sub-long/2addr v0, p3

    add-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-lez p1, :cond_3

    .line 312
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {p1, p0, v0, v1}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$mpostCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    return-void

    .line 315
    :cond_1
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    array-length p2, p1

    if-le v1, p2, :cond_3

    .line 317
    array-length p1, p1

    iput p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    .line 318
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/AppTimeLimitController$UserData;

    if-nez p1, :cond_2

    goto :goto_0

    .line 320
    :cond_2
    iget-object p1, p1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 321
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many noted usage starts! Observed entities: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    .line 322
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "   Active Entities: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 321
    const-string p1, "AppTimeLimitController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public noteUsageStop(J)V
    .locals 9

    .line 330
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 331
    iget-wide v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    iget-wide v5, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 332
    :goto_0
    iget-wide v7, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    sub-long v7, p1, v7

    add-long/2addr v3, v7

    iput-wide v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    .line 334
    iput-wide p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastUsageEndTimeMs:J

    if-eqz v1, :cond_1

    cmp-long p1, v3, v5

    if-ltz p1, :cond_1

    .line 338
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {p1, p0}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$mpostInformLimitReachedListenerLocked(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 340
    :cond_1
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {p1, p0}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$mcancelCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    return-void

    :cond_2
    if-gez v0, :cond_4

    .line 344
    iput v2, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    .line 345
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/AppTimeLimitController$UserData;

    if-nez p1, :cond_3

    goto :goto_1

    .line 347
    :cond_3
    iget-object p1, p1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 348
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Too many noted usage stops! Observed entities: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    .line 349
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "   Active Entities: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 348
    const-string p1, "AppTimeLimitController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public onLimitReached()V
    .locals 10

    .line 393
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    if-nez v0, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$fgetmListener(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$fgetmListener(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    move-result-object v2

    iget v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    invoke-static {v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->-$$Nest$fgetuserId(Lcom/android/server/usage/AppTimeLimitController$UserData;)I

    move-result v4

    iget-wide v5, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    iget-wide v7, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    iget-object v9, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLimitReachedCallback:Landroid/app/PendingIntent;

    invoke-interface/range {v2 .. v9}, Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;->onLimitReached(IIJJLandroid/app/PendingIntent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public remove()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0, p0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->removeUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    :cond_0
    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLimitReachedCallback:Landroid/app/PendingIntent;

    return-void
.end method
