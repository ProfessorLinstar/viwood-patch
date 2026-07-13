.class public Lcom/android/server/am/UserController$PendingUserStart;
.super Ljava/lang/Object;
.source "UserController.java"


# instance fields
.field public final unlockListener:Landroid/os/IProgressListener;

.field public final userId:I

.field public final userStartMode:I


# direct methods
.method public constructor <init>(IILandroid/os/IProgressListener;)V
    .locals 0

    .line 3832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3833
    iput p1, p0, Lcom/android/server/am/UserController$PendingUserStart;->userId:I

    .line 3834
    iput p2, p0, Lcom/android/server/am/UserController$PendingUserStart;->userStartMode:I

    .line 3835
    iput-object p3, p0, Lcom/android/server/am/UserController$PendingUserStart;->unlockListener:Landroid/os/IProgressListener;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 3840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PendingUserStart{userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/UserController$PendingUserStart;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userStartMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/UserController$PendingUserStart;->userStartMode:I

    .line 3842
    invoke-static {v1}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", unlockListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/UserController$PendingUserStart;->unlockListener:Landroid/os/IProgressListener;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
