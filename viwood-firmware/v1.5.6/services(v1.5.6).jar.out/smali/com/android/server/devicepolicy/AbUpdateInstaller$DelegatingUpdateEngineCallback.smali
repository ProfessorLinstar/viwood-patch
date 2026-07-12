.class public Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;
.super Landroid/os/UpdateEngineCallback;
.source "AbUpdateInstaller.java"


# instance fields
.field public mUpdateEngine:Landroid/os/UpdateEngine;

.field public mUpdateInstaller:Lcom/android/server/devicepolicy/UpdateInstaller;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/UpdateInstaller;Landroid/os/UpdateEngine;)V
    .locals 0

    .line 264
    invoke-direct {p0}, Landroid/os/UpdateEngineCallback;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;->mUpdateInstaller:Lcom/android/server/devicepolicy/UpdateInstaller;

    .line 266
    iput-object p2, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;->mUpdateEngine:Landroid/os/UpdateEngine;

    return-void
.end method


# virtual methods
.method public onPayloadApplicationComplete(I)V
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;->mUpdateEngine:Landroid/os/UpdateEngine;

    invoke-virtual {v0}, Landroid/os/UpdateEngine;->unbind()Z

    if-nez p1, :cond_0

    .line 278
    iget-object p0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;->mUpdateInstaller:Lcom/android/server/devicepolicy/UpdateInstaller;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnSuccess()V

    return-void

    .line 280
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;->mUpdateInstaller:Lcom/android/server/devicepolicy/UpdateInstaller;

    invoke-static {}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->-$$Nest$sfgeterrorCodesMap()Ljava/util/Map;

    move-result-object v0

    .line 282
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 281
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->-$$Nest$sfgeterrorStringsMap()Ljava/util/Map;

    move-result-object v1

    .line 283
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown error with error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 280
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    return-void
.end method

.method public onStatusUpdate(IF)V
    .locals 0

    .line 0
    return-void
.end method
