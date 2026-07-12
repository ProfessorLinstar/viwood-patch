.class public final Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;
.super Ljava/lang/Record;
.source "KeyboardGlyphManager.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
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
        {}
    }
    componentNames = {
        "packageName",
        "receiverName",
        "resourceId",
        "vendorId",
        "productId"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        null
    }
    componentTypes = {
        Ljava/lang/String;,
        Ljava/lang/String;,
        I,
        I,
        I
    }
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final productId:I

.field public final receiverName:Ljava/lang/String;

.field public final resourceId:I

.field public final vendorId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetpackageName(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetproductId(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->productId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetreceiverName(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->receiverName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetresourceId(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->resourceId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetvendorId(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->vendorId:I

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 381
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->receiverName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->resourceId:I

    iput p4, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->vendorId:I

    iput p5, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->productId:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILcom/android/server/input/KeyboardGlyphManager-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;

    iget v0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->resourceId:I

    iget v1, p1, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->resourceId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->vendorId:I

    iget v1, p1, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->vendorId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->productId:I

    iget v1, p1, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->productId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->receiverName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->receiverName:Ljava/lang/String;

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
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->receiverName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->resourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->vendorId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->productId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    aput-object p0, v4, v0

    return-object v4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 381
    iget v0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->resourceId:I

    iget v1, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->vendorId:I

    iget v2, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->productId:I

    iget-object v3, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->receiverName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData$$ExternalSyntheticRecord0;->m(IIILjava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 381
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;

    const-string/jumbo v1, "packageName;receiverName;resourceId;vendorId;productId"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
