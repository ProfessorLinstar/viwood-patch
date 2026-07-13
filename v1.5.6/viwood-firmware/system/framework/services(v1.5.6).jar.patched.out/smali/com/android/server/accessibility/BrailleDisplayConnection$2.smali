.class public Lcom/android/server/accessibility/BrailleDisplayConnection$2;
.super Ljava/lang/Object;
.source "BrailleDisplayConnection.java"

# interfaces
.implements Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;


# instance fields
.field public final synthetic val$brailleDisplayMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/BrailleDisplayConnection;Ljava/util/Map;)V
    .locals 0

    .line 545
    iput-object p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$2;->val$brailleDisplayMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceBusType(Ljava/nio/file/Path;)I
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$2;->val$brailleDisplayMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string p1, "BUS_BLUETOOTH"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public getDeviceReportDescriptor(Ljava/nio/file/Path;)[B
    .locals 0

    .line 553
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$2;->val$brailleDisplayMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string p1, "DESCRIPTOR"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getHidrawNodePaths(Ljava/nio/file/Path;)Ljava/util/Collection;
    .locals 0

    .line 548
    iget-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$2;->val$brailleDisplayMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$2;->val$brailleDisplayMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getName(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 0

    .line 572
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$2;->val$brailleDisplayMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string p1, "NAME"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUniqueId(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$2;->val$brailleDisplayMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string p1, "UNIQUE_ID"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
