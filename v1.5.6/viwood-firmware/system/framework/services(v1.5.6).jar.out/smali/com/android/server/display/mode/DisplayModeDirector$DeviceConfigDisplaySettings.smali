.class public Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public static synthetic $r8$lambda$4IM44pR3egbsLgKCJgtproSJ4HU(Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->lambda$getRefreshRateInHbmHdr$0()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UjQJH7qg8DdCnUYR-DTJghZFPuQ(Lcom/android/server/display/DisplayDeviceConfig;)I
    .locals 0

    .line 3085
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getRefreshRateData()Lcom/android/server/display/config/RefreshRateData;

    move-result-object p0

    iget p0, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmHdr:I

    return p0
.end method

.method public static synthetic $r8$lambda$Zlf8FUrJAId9oJETwAtYDKb3u9M(Lcom/android/server/display/DisplayDeviceConfig;)I
    .locals 0

    .line 3094
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getRefreshRateData()Lcom/android/server/display/config/RefreshRateData;

    move-result-object p0

    iget p0, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmSunlight:I

    return p0
.end method

.method public static synthetic $r8$lambda$p85UmY-pmP6AkHPGqUwdtsPukFw(Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->lambda$getRefreshRateInHbmSunlight$2()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetRefreshRateInHbmHdr(Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;Lcom/android/server/display/DisplayDeviceConfig;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHbmHdr(Lcom/android/server/display/DisplayDeviceConfig;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetRefreshRateInHbmSunlight(Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;Lcom/android/server/display/DisplayDeviceConfig;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHbmSunlight(Lcom/android/server/display/DisplayDeviceConfig;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;)V
    .locals 0

    .line 3076
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/mode/DisplayModeDirector-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;)V

    return-void
.end method


# virtual methods
.method public final getRefreshRate(Ljava/util/function/IntSupplier;Ljava/util/function/IntSupplier;ILcom/android/server/display/DisplayDeviceConfig;)I
    .locals 1

    const/4 v0, -0x1

    .line 3104
    :try_start_0
    invoke-interface {p1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p1, v0

    :goto_0
    if-ne p1, v0, :cond_1

    if-nez p4, :cond_0

    .line 3110
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmContext(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_1
    move p1, p0

    goto :goto_2

    .line 3111
    :cond_0
    invoke-interface {p2}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_2
    return p1
.end method

.method public final getRefreshRateInHbmHdr(Lcom/android/server/display/DisplayDeviceConfig;)I
    .locals 3

    .line 3083
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;)V

    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    const v2, 0x10e0067

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRate(Ljava/util/function/IntSupplier;Ljava/util/function/IntSupplier;ILcom/android/server/display/DisplayDeviceConfig;)I

    move-result p0

    return p0
.end method

.method public final getRefreshRateInHbmSunlight(Lcom/android/server/display/DisplayDeviceConfig;)I
    .locals 3

    .line 3092
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;)V

    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    const v2, 0x10e0068

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRate(Ljava/util/function/IntSupplier;Ljava/util/function/IntSupplier;ILcom/android/server/display/DisplayDeviceConfig;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$getRefreshRateInHbmHdr$0()I
    .locals 0

    .line 3084
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getRefreshRateInHbmHdr()I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$getRefreshRateInHbmSunlight$2()I
    .locals 0

    .line 3093
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getRefreshRateInHbmSunlight()I

    move-result p0

    return p0
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 5

    .line 3118
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getPeakRefreshRateDefault()F

    move-result p1

    .line 3119
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3120
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_0
    const/4 v1, 0x3

    .line 3119
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3120
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3122
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p1

    .line 3123
    invoke-virtual {p1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getLowDisplayBrightnessThresholds()[F

    move-result-object p1

    .line 3124
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v0

    .line 3125
    invoke-virtual {v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getLowAmbientBrightnessThresholds()[F

    move-result-object v0

    .line 3126
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getRefreshRateInLowZone()I

    move-result v1

    .line 3128
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v2

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x2

    invoke-virtual {v2, p1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3130
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3132
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object p1

    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 3133
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3135
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p1

    .line 3136
    invoke-virtual {p1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getHighDisplayBrightnessThresholds()[F

    move-result-object p1

    .line 3137
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v0

    .line 3138
    invoke-virtual {v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getHighAmbientBrightnessThresholds()[F

    move-result-object v0

    .line 3139
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getRefreshRateInHighZone()I

    move-result v1

    .line 3141
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v3

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x6

    invoke-virtual {v3, p1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3143
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3145
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 3146
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3148
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3149
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .line 3150
    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHbmSunlight(Lcom/android/server/display/DisplayDeviceConfig;)I

    move-result v0

    .line 3151
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3153
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3155
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .line 3156
    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHbmHdr(Lcom/android/server/display/DisplayDeviceConfig;)I

    move-result v0

    .line 3157
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object p0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 3158
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 3159
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startListening()V
    .locals 2

    .line 3078
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v0

    .line 3079
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 3078
    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->addOnPropertiesChangedListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method
