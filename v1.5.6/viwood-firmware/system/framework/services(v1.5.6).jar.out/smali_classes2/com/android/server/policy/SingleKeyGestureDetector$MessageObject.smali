.class public final Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;
.super Ljava/lang/Record;
.source "SingleKeyGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "activeRule",
        "keyCode",
        "pressCount",
        "displayId",
        "metaState",
        "deviceId"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        null,
        null
    }
    componentTypes = {
        Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;,
        I,
        I,
        I,
        I,
        I
    }
.end annotation


# instance fields
.field public final activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

.field public final deviceId:I

.field public final displayId:I

.field public final keyCode:I

.field public final metaState:I

.field public final pressCount:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetactiveRule(Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;)Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetdeviceId(Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->deviceId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetdisplayId(Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetkeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmetaState(Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->metaState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetpressCount(Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I

    return p0
.end method

.method public constructor <init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIIII)V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iput p2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I

    iput p3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I

    iput p4, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I

    iput p5, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->metaState:I

    iput p6, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->deviceId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IILandroid/view/KeyEvent;)V
    .locals 7

    .line 192
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v4

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    .line 193
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 192
    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIIII)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I

    iget v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I

    iget v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I

    iget v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->metaState:I

    iget v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->metaState:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->deviceId:I

    iget v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->deviceId:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget-object p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

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
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->metaState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->deviceId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    const/4 v0, 0x5

    aput-object p0, v5, v0

    return-object v5
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 6

    .line 189
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I

    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I

    iget v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->metaState:I

    iget v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->deviceId:I

    iget-object v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static/range {v0 .. v5}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject$$ExternalSyntheticRecord0;->m(IIIIILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    const-string v1, "activeRule;keyCode;pressCount;displayId;metaState;deviceId"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
