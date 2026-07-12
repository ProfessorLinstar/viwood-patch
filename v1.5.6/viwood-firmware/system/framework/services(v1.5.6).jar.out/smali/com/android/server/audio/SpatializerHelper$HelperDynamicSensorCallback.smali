.class public final Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;
.super Landroid/hardware/SensorManager$DynamicSensorCallback;
.source "SpatializerHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/SpatializerHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SpatializerHelper;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-direct {p0}, Landroid/hardware/SensorManager$DynamicSensorCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/SpatializerHelper;Lcom/android/server/audio/SpatializerHelper-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;)V

    return-void
.end method


# virtual methods
.method public onDynamicSensorConnected(Landroid/hardware/Sensor;)V
    .locals 0

    .line 516
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {p0}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$mpostInitSensors(Lcom/android/server/audio/SpatializerHelper;)V

    return-void
.end method

.method public onDynamicSensorDisconnected(Landroid/hardware/Sensor;)V
    .locals 0

    .line 521
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {p0}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$mpostInitSensors(Lcom/android/server/audio/SpatializerHelper;)V

    return-void
.end method
