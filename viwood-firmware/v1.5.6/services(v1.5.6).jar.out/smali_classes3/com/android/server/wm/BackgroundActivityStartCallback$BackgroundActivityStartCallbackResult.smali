.class public final Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;
.super Ljava/lang/Record;
.source "BackgroundActivityStartCallback.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "allowed",
        "token"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        Z,
        Landroid/os/IBinder;
    }
.end annotation


# instance fields
.field public final allowed:Z

.field public final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(ZLandroid/os/IBinder;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->allowed:Z

    iput-object p2, p0, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->token:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;

    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->allowed:Z

    iget-boolean v1, p1, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->allowed:Z

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->token:Landroid/os/IBinder;

    iget-object p1, p1, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->token:Landroid/os/IBinder;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 3

    .line 0
    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->allowed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->token:Landroid/os/IBinder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    return-object v1
.end method

.method public allowed()Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->allowed:Z

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->allowed:Z

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->token:Landroid/os/IBinder;

    invoke-static {v0, p0}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult$$ExternalSyntheticRecord0;->m(ZLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 32
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;

    const-string v1, "allowed;token"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public token()Landroid/os/IBinder;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->token:Landroid/os/IBinder;

    return-object p0
.end method
