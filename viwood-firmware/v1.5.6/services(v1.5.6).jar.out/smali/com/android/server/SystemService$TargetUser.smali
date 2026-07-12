.class public final Lcom/android/server/SystemService$TargetUser;
.super Ljava/lang/Object;
.source "SystemService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field public final mFull:Z

.field public final mPreCreated:Z

.field public final mProfile:Z

.field public final mUserId:I

.field public final mUserType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/UserInfo;)V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iput v0, p0, Lcom/android/server/SystemService$TargetUser;->mUserId:I

    .line 160
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemService$TargetUser;->mFull:Z

    .line 161
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemService$TargetUser;->mProfile:Z

    .line 162
    iget-object v0, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/SystemService$TargetUser;->mUserType:Ljava/lang/String;

    .line 163
    iget-boolean p1, p1, Landroid/content/pm/UserInfo;->preCreated:Z

    iput-boolean p1, p0, Lcom/android/server/SystemService$TargetUser;->mPreCreated:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 233
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->isProfile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x28

    .line 235
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 237
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->isFull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    const-string v0, "full"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->isProfile()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 242
    const-string/jumbo p0, "profile"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    const/16 p0, 0x29

    .line 244
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 0

    .line 210
    iget p0, p0, Lcom/android/server/SystemService$TargetUser;->mUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public getUserIdentifier()I
    .locals 0

    .line 219
    iget p0, p0, Lcom/android/server/SystemService$TargetUser;->mUserId:I

    return p0
.end method

.method public isFull()Z
    .locals 0

    .line 172
    iget-boolean p0, p0, Lcom/android/server/SystemService$TargetUser;->mFull:Z

    return p0
.end method

.method public isManagedProfile()Z
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/server/SystemService$TargetUser;->mUserType:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPreCreated()Z
    .locals 0

    .line 202
    iget-boolean p0, p0, Lcom/android/server/SystemService$TargetUser;->mPreCreated:Z

    return p0
.end method

.method public isProfile()Z
    .locals 0

    .line 181
    iget-boolean p0, p0, Lcom/android/server/SystemService$TargetUser;->mProfile:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 224
    iget p0, p0, Lcom/android/server/SystemService$TargetUser;->mUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
