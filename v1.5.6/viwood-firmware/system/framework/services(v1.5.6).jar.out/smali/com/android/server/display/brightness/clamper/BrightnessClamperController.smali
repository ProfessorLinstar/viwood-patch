.class public Lcom/android/server/display/brightness/clamper/BrightnessClamperController;
.super Ljava/lang/Object;
.source "BrightnessClamperController.java"


# instance fields
.field public final mClamperChangeListenerExternal:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field public final mDeviceConfigListeners:Ljava/util/List;

.field public final mDeviceConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field public final mDisplayDeviceDataListeners:Ljava/util/List;

.field public mDisplayState:I

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public final mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

.field public final mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

.field public final mModifiers:Ljava/util/List;

.field public mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

.field public final mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public volatile mStarted:Z

.field public final mStatefulModifiers:Ljava/util/List;

.field public final mUserSwitchListeners:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$KW1PfQkggty-OpDV9NTT8OvIsEM(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;)V
    .locals 0

    .line 215
    invoke-interface {p1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;->applyStateChange(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O_Db3R5ZOThySPed3NrXWlnzByY(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->lambda$new$2(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T0jhELYM8iAkhQZTlgzlCemCYMI(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->lambda$new$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UbHQs2xcCeL-ihfZ8Z3AiRG97qA(Landroid/util/IndentingPrintWriter;Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;)V
    .locals 0

    .line 183
    invoke-interface {p1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_99BYE4X6wh_0QCNX7YtZRRi0qQ(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->recalculateModifiersState()V

    return-void
.end method

.method public static synthetic $r8$lambda$lZbkd5dSsq5LPeOklHPm2wOksTM(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->lambda$new$1(Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wTdg2EEUse8KZfVRspHss_Ie-xA(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;)V
    .locals 0

    .line 143
    invoke-interface {p1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;->onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmModifiers(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/hardware/SensorManager;F)V
    .locals 9

    .line 91
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;

    invoke-direct {v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/hardware/SensorManager;F)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/hardware/SensorManager;F)V
    .locals 7

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 62
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayState:I

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayDeviceDataListeners:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStatefulModifiers:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mUserSwitchListeners:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigListeners:Ljava/util/List;

    .line 74
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    .line 78
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

    const/4 v1, 0x0

    .line 86
    iput-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStarted:Z

    .line 99
    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;->getDeviceConfigParameterProvider()Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 100
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mHandler:Landroid/os/Handler;

    .line 101
    invoke-virtual {p1, p7, p5, v0, p2}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;->getLightSensorController(Landroid/hardware/SensorManager;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;Landroid/os/Handler;)Lcom/android/server/display/brightness/clamper/LightSensorController;

    move-result-object p7

    iput-object p7, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    .line 104
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperChangeListenerExternal:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 105
    new-instance p3, Landroid/os/HandlerExecutor;

    invoke-direct {p3, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 107
    new-instance p3, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V

    .line 108
    new-instance v4, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p3}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;Ljava/lang/Runnable;)V

    move-object v0, p1

    move-object v3, p2

    move-object v5, p4

    move-object v2, p5

    move-object v1, p6

    move v6, p8

    .line 114
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;->getModifiers(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;F)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    .line 117
    new-instance p2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V

    invoke-interface {p1, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 131
    new-instance p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 134
    invoke-virtual {v5}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->getAmbientLightSensor()Lcom/android/server/display/config/SensorData;

    move-result-object p1

    invoke-virtual {v5}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->getDisplayId()I

    move-result p2

    invoke-virtual {p7, p1, p2}, Lcom/android/server/display/brightness/clamper/LightSensorController;->configure(Lcom/android/server/display/config/SensorData;I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->start()V

    return-void
.end method


# virtual methods
.method public final adjustLightSensorSubscription()V
    .locals 2

    .line 245
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda7;-><init>()V

    .line 246
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/LightSensorController;->restart()V

    return-void

    .line 249
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/LightSensorController;->stop()V

    return-void
.end method

.method public clamp(Lcom/android/server/display/DisplayBrightnessState;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;FZI)Lcom/android/server/display/DisplayBrightnessState;
    .locals 0

    .line 154
    iput p5, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayState:I

    .line 155
    invoke-static {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->from(Lcom/android/server/display/DisplayBrightnessState;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p1

    .line 157
    invoke-virtual {p1, p4}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsSlowChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 158
    invoke-virtual {p1, p3}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 160
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->adjustLightSensorSubscription()V

    const/4 p3, 0x0

    .line 162
    :goto_0
    iget-object p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_0

    .line 163
    iget-object p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;

    invoke-interface {p4, p2, p1}, Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;->apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->build()Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 180
    const-string v0, "BrightnessClamperController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-virtual {p1, v0}, Lcom/android/server/display/brightness/clamper/LightSensorController;->dump(Ljava/io/PrintWriter;)V

    .line 183
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    new-instance p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda4;

    invoke-direct {p1, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda4;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getMaxBrightness()F
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    return p0
.end method

.method public isThrottled()Z
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final synthetic lambda$new$1(Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;)V
    .locals 2

    .line 118
    instance-of v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;

    .line 119
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayDeviceDataListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    instance-of v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;

    .line 122
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStatefulModifiers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_1
    instance-of v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$UserSwitchListener;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$UserSwitchListener;

    .line 125
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mUserSwitchListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_2
    instance-of v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DeviceConfigListener;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DeviceConfigListener;

    .line 128
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final synthetic lambda$new$2(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigListeners:Ljava/util/List;

    new-instance p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final needToNotifyExternalListener(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)Z
    .locals 1

    .line 225
    iget p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxDesiredHdrRatio:F

    iget v0, p2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxDesiredHdrRatio:F

    invoke-static {p0, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxHdrBrightness:F

    iget v0, p2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxHdrBrightness:F

    .line 227
    invoke-static {p0, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mSdrHdrRatioSpline:Landroid/util/Spline;

    iget-object v0, p2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mSdrHdrRatioSpline:Landroid/util/Spline;

    if-ne p0, v0, :cond_1

    iget p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    iget v0, p2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    if-ne p0, v0, :cond_1

    iget p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    iget p1, p2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    .line 231
    invoke-static {p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->getAmbientLightSensor()Lcom/android/server/display/config/SensorData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/brightness/clamper/LightSensorController;->configure(Lcom/android/server/display/config/SensorData;I)V

    .line 143
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayDeviceDataListeners:Ljava/util/List;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->adjustLightSensorSubscription()V

    return-void
.end method

.method public onUserSwitch()V
    .locals 1

    .line 173
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mUserSwitchListeners:Ljava/util/List;

    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final recalculateModifiersState()V
    .locals 3

    .line 214
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;-><init>()V

    .line 215
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStatefulModifiers:Ljava/util/List;

    new-instance v2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 217
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->needToNotifyExternalListener(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperChangeListenerExternal:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    .line 220
    :cond_0
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    return-void
.end method

.method public final start()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->addOnPropertiesChangedListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->adjustLightSensorSubscription()V

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStarted:Z

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStarted:Z

    .line 192
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/LightSensorController;->stop()V

    .line 195
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
