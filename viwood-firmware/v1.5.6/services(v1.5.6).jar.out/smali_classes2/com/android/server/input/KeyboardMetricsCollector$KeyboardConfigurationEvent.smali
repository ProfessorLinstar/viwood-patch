.class public Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;
.super Ljava/lang/Object;
.source "KeyboardMetricsCollector.java"


# instance fields
.field public final mInputDevice:Landroid/view/InputDevice;

.field public final mIsFirstConfiguration:Z

.field public final mLayoutConfigurations:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/view/InputDevice;ZLjava/util/List;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mInputDevice:Landroid/view/InputDevice;

    .line 157
    iput-boolean p2, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mIsFirstConfiguration:Z

    .line 158
    iput-object p3, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mLayoutConfigurations:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/InputDevice;ZLjava/util/List;Lcom/android/server/input/KeyboardMetricsCollector-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;-><init>(Landroid/view/InputDevice;ZLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDeviceBus()I
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mInputDevice:Landroid/view/InputDevice;

    invoke-virtual {p0}, Landroid/view/InputDevice;->getDeviceBus()I

    move-result p0

    return p0
.end method

.method public getLayoutConfigurations()Ljava/util/List;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mLayoutConfigurations:Ljava/util/List;

    return-object p0
.end method

.method public getProductId()I
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mInputDevice:Landroid/view/InputDevice;

    invoke-virtual {p0}, Landroid/view/InputDevice;->getProductId()I

    move-result p0

    return p0
.end method

.method public getVendorId()I
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mInputDevice:Landroid/view/InputDevice;

    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    move-result p0

    return p0
.end method

.method public isFirstConfiguration()Z
    .locals 0

    .line 174
    iget-boolean p0, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mIsFirstConfiguration:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputDevice = {VendorId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->getVendorId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ProductId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->getProductId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Device Bus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->getDeviceBus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, isFirstConfiguration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mIsFirstConfiguration:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", LayoutConfigurations = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mLayoutConfigurations:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
