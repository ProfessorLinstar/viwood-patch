.class public final Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;
.super Ljava/lang/Record;
.source "InputMethodManagerService.java"


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
        "requestId",
        "pid",
        "userData"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        I,
        I,
        Lcom/android/server/inputmethod/UserData;
    }
.end annotation


# instance fields
.field public final pid:I

.field public final requestId:I

.field public final userData:Lcom/android/server/inputmethod/UserData;


# direct methods
.method public static bridge synthetic -$$Nest$fgetpid(Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->pid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetrequestId(Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->requestId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetuserData(Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;)Lcom/android/server/inputmethod/UserData;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->userData:Lcom/android/server/inputmethod/UserData;

    return-object p0
.end method

.method public constructor <init>(IILcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 5186
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->requestId:I

    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->pid:I

    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->userData:Lcom/android/server/inputmethod/UserData;

    return-void
.end method

.method public synthetic constructor <init>(IILcom/android/server/inputmethod/UserData;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;-><init>(IILcom/android/server/inputmethod/UserData;)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->requestId:I

    iget v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->requestId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->pid:I

    iget v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->pid:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->userData:Lcom/android/server/inputmethod/UserData;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->userData:Lcom/android/server/inputmethod/UserData;

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
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->requestId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->userData:Lcom/android/server/inputmethod/UserData;

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

    .line 5186
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 5186
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->requestId:I

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->pid:I

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->userData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v0, v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest$$ExternalSyntheticRecord0;->m(IILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 5186
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;

    const-string/jumbo v1, "requestId;pid;userData"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
