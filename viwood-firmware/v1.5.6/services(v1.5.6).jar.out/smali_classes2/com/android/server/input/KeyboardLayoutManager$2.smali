.class public Lcom/android/server/input/KeyboardLayoutManager$2;
.super Ljava/lang/Object;
.source "KeyboardLayoutManager.java"

# interfaces
.implements Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;


# instance fields
.field public mDeviceSpecificLayoutAvailable:Z

.field public final synthetic val$imeLanguageTag:Ljava/lang/String;

.field public final synthetic val$keyboardIdentifier:Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

.field public final synthetic val$potentialLayouts:Ljava/util/ArrayList;

.field public final synthetic val$userSelectedLayout:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyboardLayoutManager;Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 590
    iput-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager$2;->val$keyboardIdentifier:Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    iput-object p3, p0, Lcom/android/server/input/KeyboardLayoutManager$2;->val$potentialLayouts:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/input/KeyboardLayoutManager$2;->val$imeLanguageTag:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/input/KeyboardLayoutManager$2;->val$userSelectedLayout:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 0

    .line 600
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager$2;->val$keyboardIdentifier:Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    invoke-static {p2}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->-$$Nest$fgetmIdentifier(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;)Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 601
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager$2;->val$keyboardIdentifier:Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    invoke-static {p2}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->-$$Nest$fgetmIdentifier(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;)Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 602
    iget-boolean p1, p0, Lcom/android/server/input/KeyboardLayoutManager$2;->mDeviceSpecificLayoutAvailable:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 603
    iput-boolean p1, p0, Lcom/android/server/input/KeyboardLayoutManager$2;->mDeviceSpecificLayoutAvailable:Z

    .line 604
    iget-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager$2;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 606
    :cond_0
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$2;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 607
    :cond_1
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result p1

    if-ne p1, p2, :cond_2

    iget-boolean p1, p0, Lcom/android/server/input/KeyboardLayoutManager$2;->mDeviceSpecificLayoutAvailable:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager$2;->val$imeLanguageTag:Ljava/lang/String;

    .line 608
    invoke-static {p3, p1}, Lcom/android/server/input/KeyboardLayoutManager;->-$$Nest$smisLayoutCompatibleWithLanguageTag(Landroid/hardware/input/KeyboardLayout;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 610
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$2;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 611
    :cond_2
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager$2;->val$userSelectedLayout:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 612
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$2;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
