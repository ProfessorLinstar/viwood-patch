.class public final Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "ActivityManagerShellCommand.java"


# instance fields
.field public mIam:Landroid/app/IActivityManager;

.field public mPw:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;Landroid/app/IActivityManager;)V
    .locals 0

    .line 3918
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 3919
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mPw:Ljava/io/PrintWriter;

    .line 3920
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mIam:Landroid/app/IActivityManager;

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 1

    if-eqz p3, :cond_1

    .line 3927
    :try_start_0
    iget-object p3, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mIam:Landroid/app/IActivityManager;

    const-string v0, "android"

    invoke-interface {p3, p2, v0}, Landroid/app/IActivityManager;->getUidProcessState(ILjava/lang/String;)I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    .line 3930
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mPw:Ljava/io/PrintWriter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "New foreground process: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3932
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mPw:Ljava/io/PrintWriter;

    const-string p2, "No top app found"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3934
    :goto_0
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3936
    :catch_0
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mPw:Ljava/io/PrintWriter;

    const-string p2, "Error occurred in binder call"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3937
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    :cond_1
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onProcessDied(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method
