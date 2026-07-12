.class public Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
.super Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
.source "AppTimeLimitController.java"


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V
    .locals 0

    .line 421
    invoke-direct/range {p0 .. p8}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onLimitReached()V
    .locals 0

    .line 437
    invoke-super {p0}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->onLimitReached()V

    .line 439
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->remove()V

    return-void
.end method

.method public remove()V
    .locals 1

    .line 427
    invoke-super {p0}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->remove()V

    .line 428
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverAppRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    if-eqz v0, :cond_0

    .line 430
    iget p0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    invoke-virtual {v0, p0}, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->removeAppUsageGroup(I)V

    :cond_0
    return-void
.end method
