.class public Lcom/android/server/hdmi/HdmiCecController$2;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Integer;)Z
    .locals 0

    const/4 p0, 0x5

    .line 137
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForDevice(II)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 134
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecController$2;->test(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method
