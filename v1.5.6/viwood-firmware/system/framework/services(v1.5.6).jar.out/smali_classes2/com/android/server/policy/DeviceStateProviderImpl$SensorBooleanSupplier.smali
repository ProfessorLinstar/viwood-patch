.class public final Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;
.super Ljava/lang/Object;
.source "DeviceStateProviderImpl.java"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final mExpectedValues:Ljava/util/List;

.field public final mSensor:Landroid/hardware/Sensor;

.field public final synthetic this$0:Lcom/android/server/policy/DeviceStateProviderImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/DeviceStateProviderImpl;Landroid/hardware/Sensor;Ljava/util/List;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 708
    iput-object p2, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mSensor:Landroid/hardware/Sensor;

    .line 709
    iput-object p3, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mExpectedValues:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final adheresToRange(FLcom/android/server/policy/devicestate/config/NumericRange;)Z
    .locals 1

    .line 740
    invoke-virtual {p2}, Lcom/android/server/policy/devicestate/config/NumericRange;->getMin_optional()Ljava/math/BigDecimal;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 745
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    return v0

    .line 750
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/policy/devicestate/config/NumericRange;->getMinInclusive_optional()Ljava/math/BigDecimal;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 756
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    return v0

    .line 761
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/policy/devicestate/config/NumericRange;->getMax_optional()Ljava/math/BigDecimal;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 766
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_2

    return v0

    .line 771
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/policy/devicestate/config/NumericRange;->getMaxInclusive_optional()Ljava/math/BigDecimal;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 777
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public getAsBoolean()Z
    .locals 6

    .line 714
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-static {v0}, Lcom/android/server/policy/DeviceStateProviderImpl;->-$$Nest$fgetmLock(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 715
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-static {v1}, Lcom/android/server/policy/DeviceStateProviderImpl;->-$$Nest$fgetmLatestSensorEvent(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mSensor:Landroid/hardware/Sensor;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorEvent;

    if-eqz v1, :cond_3

    .line 720
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    iget-object v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mExpectedValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    const/4 v2, 0x0

    move v3, v2

    .line 726
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mExpectedValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 727
    iget-object v4, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    iget-object v5, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mExpectedValues:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/devicestate/config/NumericRange;

    invoke-virtual {p0, v4, v5}, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->adheresToRange(FLcom/android/server/policy/devicestate/config/NumericRange;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 728
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 731
    monitor-exit v0

    return p0

    .line 721
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of supplied numeric range(s) does not match the number of values in the latest sensor event for sensor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 717
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Have not received sensor event."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 732
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
