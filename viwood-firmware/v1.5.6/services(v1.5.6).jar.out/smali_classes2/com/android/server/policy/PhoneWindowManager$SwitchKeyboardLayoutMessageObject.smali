.class public final Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;
.super Ljava/lang/Record;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "displayId",
        "focusedToken",
        "direction"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        I,
        Landroid/os/IBinder;,
        I
    }
.end annotation


# instance fields
.field public final direction:I

.field public final displayId:I

.field public final focusedToken:Landroid/os/IBinder;


# direct methods
.method public static bridge synthetic -$$Nest$fgetdirection(Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->direction:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetdisplayId(Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->displayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetfocusedToken(Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;)Landroid/os/IBinder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->focusedToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public constructor <init>(ILandroid/os/IBinder;I)V
    .locals 0

    .line 1025
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->displayId:I

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->focusedToken:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->direction:I

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/os/IBinder;ILcom/android/server/policy/PhoneWindowManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;-><init>(ILandroid/os/IBinder;I)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->displayId:I

    iget v1, p1, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->displayId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->direction:I

    iget v1, p1, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->direction:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->focusedToken:Landroid/os/IBinder;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->focusedToken:Landroid/os/IBinder;

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
    .locals 4

    .line 0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->displayId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->focusedToken:Landroid/os/IBinder;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->direction:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1025
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1025
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->displayId:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->direction:I

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->focusedToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest$$ExternalSyntheticRecord0;->m(IILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1025
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;

    const-string v1, "displayId;focusedToken;direction"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
