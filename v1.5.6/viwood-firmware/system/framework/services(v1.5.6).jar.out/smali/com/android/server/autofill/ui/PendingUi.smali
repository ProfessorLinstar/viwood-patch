.class public final Lcom/android/server/autofill/ui/PendingUi;
.super Ljava/lang/Object;
.source "PendingUi.java"


# instance fields
.field public final client:Landroid/view/autofill/IAutoFillManagerClient;

.field public mState:I

.field public final mToken:Landroid/os/IBinder;

.field public final sessionId:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;ILandroid/view/autofill/IAutoFillManagerClient;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/autofill/ui/PendingUi;->mToken:Landroid/os/IBinder;

    const/4 p1, 0x1

    .line 49
    iput p1, p0, Lcom/android/server/autofill/ui/PendingUi;->mState:I

    .line 50
    iput p2, p0, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    .line 51
    iput-object p3, p0, Lcom/android/server/autofill/ui/PendingUi;->client:Landroid/view/autofill/IAutoFillManagerClient;

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/android/server/autofill/ui/PendingUi;->mState:I

    return p0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/server/autofill/ui/PendingUi;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public matches(Landroid/os/IBinder;)Z
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/server/autofill/ui/PendingUi;->mToken:Landroid/os/IBinder;

    invoke-interface {p0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setState(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/android/server/autofill/ui/PendingUi;->mState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PendingUi: [token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ui/PendingUi;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/ui/PendingUi;->mState:I

    int-to-long v1, p0

    .line 86
    const-class p0, Lcom/android/server/autofill/ui/PendingUi;

    const-string v3, "STATE_"

    invoke-static {p0, v3, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
