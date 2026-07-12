.class public final Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
.super Ljava/lang/Object;
.source "AttributedOp.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mAttributionChainId:I

.field public mAttributionFlags:I

.field public mAttributionTag:Ljava/lang/String;

.field public mClientId:Landroid/os/IBinder;

.field public mFlags:I

.field public mNumUnfinishedStarts:I

.field public mOnDeath:Ljava/lang/Runnable;

.field public mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

.field public mStartElapsedTime:J

.field public mStartTime:J

.field public mUidState:I

.field public mVirtualDeviceId:I


# direct methods
.method public constructor <init>(JJLandroid/os/IBinder;ILjava/lang/String;Ljava/lang/Runnable;ILandroid/app/AppOpsManager$OpEventProxyInfo;III)V
    .locals 0

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    iput-wide p1, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    .line 749
    iput-wide p3, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartElapsedTime:J

    .line 750
    iput-object p5, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 751
    iput p6, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    .line 752
    iput-object p7, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionTag:Ljava/lang/String;

    .line 753
    iput-object p8, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    .line 754
    iput p9, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    .line 755
    iput-object p10, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 756
    iput p11, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    .line 757
    iput p12, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    .line 758
    iput p13, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    const/4 p1, 0x0

    .line 760
    invoke-interface {p5, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    .line 774
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 766
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getAttributionChainId()I
    .locals 0

    .line 859
    iget p0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    return p0
.end method

.method public getAttributionFlags()I
    .locals 0

    .line 854
    iget p0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    return p0
.end method

.method public getClientId()Landroid/os/IBinder;
    .locals 0

    .line 834
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    .line 849
    iget p0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    return p0
.end method

.method public getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;
    .locals 0

    .line 844
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    return-object p0
.end method

.method public getStartElapsedTime()J
    .locals 2

    .line 829
    iget-wide v0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartElapsedTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 824
    iget-wide v0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    return-wide v0
.end method

.method public getUidState()I
    .locals 0

    .line 839
    iget p0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    return p0
.end method

.method public getVirtualDeviceId()I
    .locals 0

    .line 864
    iget p0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    return p0
.end method

.method public reinit(JJLandroid/os/IBinder;Ljava/lang/String;ILjava/lang/Runnable;IILandroid/app/AppOpsManager$OpEventProxyInfo;IILandroid/util/Pools$Pool;)V
    .locals 0

    .line 803
    iput-wide p1, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    .line 804
    iput-wide p3, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartElapsedTime:J

    .line 805
    iput-object p5, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 806
    iput-object p6, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionTag:Ljava/lang/String;

    .line 807
    iput-object p8, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    .line 808
    iput p7, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    .line 809
    iput p9, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    .line 810
    iput p10, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    .line 812
    iget-object p1, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz p1, :cond_0

    .line 813
    invoke-interface {p14, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 815
    :cond_0
    iput-object p11, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 816
    iput p12, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    .line 817
    iput p13, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    const/4 p1, 0x0

    .line 819
    invoke-interface {p5, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public setStartElapsedTime(J)V
    .locals 0

    .line 872
    iput-wide p1, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartElapsedTime:J

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 868
    iput-wide p1, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    return-void
.end method
