.class public final Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;
.super Ljava/lang/Record;
.source "AdditionalSubtypeMapRepository.java"


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
        "userId",
        "subtypeMap",
        "inputMethodMap"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        I,
        Lcom/android/server/inputmethod/AdditionalSubtypeMap;,
        Lcom/android/server/inputmethod/InputMethodMap;
    }
.end annotation


# instance fields
.field public final inputMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

.field public final subtypeMap:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

.field public final userId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetinputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;)Lcom/android/server/inputmethod/InputMethodMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->inputMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetsubtypeMap(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;)Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->subtypeMap:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetuserId(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->userId:I

    return p0
.end method

.method public constructor <init>(ILcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->userId:I

    iput-object p2, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->subtypeMap:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    iput-object p3, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->inputMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;

    iget v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->userId:I

    iget v1, p1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->userId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->subtypeMap:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    iget-object v1, p1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->subtypeMap:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->inputMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    iget-object p1, p1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->inputMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

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
    iget v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->subtypeMap:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->inputMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

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

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 47
    iget v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->userId:I

    iget-object v1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->subtypeMap:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->inputMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-static {v0, v1, p0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;

    const-string/jumbo v1, "userId;subtypeMap;inputMethodMap"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
