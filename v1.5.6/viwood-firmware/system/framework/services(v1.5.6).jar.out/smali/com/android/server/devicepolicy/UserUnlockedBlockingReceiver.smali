.class public Lcom/android/server/devicepolicy/UserUnlockedBlockingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserUnlockedBlockingReceiver.java"


# instance fields
.field public final mSemaphore:Ljava/util/concurrent/Semaphore;

.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/UserUnlockedBlockingReceiver;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 38
    iput p1, p0, Lcom/android/server/devicepolicy/UserUnlockedBlockingReceiver;->mUserId:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget p2, p0, Lcom/android/server/devicepolicy/UserUnlockedBlockingReceiver;->mUserId:I

    if-ne p1, p2, :cond_1

    .line 47
    iget-object p0, p0, Lcom/android/server/devicepolicy/UserUnlockedBlockingReceiver;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_1
    :goto_0
    return-void
.end method

.method public waitForUserUnlocked()Z
    .locals 3

    .line 53
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/UserUnlockedBlockingReceiver;->mSemaphore:Ljava/util/concurrent/Semaphore;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x78

    invoke-virtual {p0, v1, v2, v0}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
