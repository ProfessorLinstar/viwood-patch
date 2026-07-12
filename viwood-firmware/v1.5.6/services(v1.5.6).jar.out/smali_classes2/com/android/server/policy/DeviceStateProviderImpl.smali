.class public final Lcom/android/server/policy/DeviceStateProviderImpl;
.super Ljava/lang/Object;
.source "DeviceStateProviderImpl.java"

# interfaces
.implements Lcom/android/server/devicestate/DeviceStateProvider;
.implements Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/os/PowerManager$OnThermalStatusChangedListener;


# static fields
.field static final DEFAULT_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

.field public static final FALSE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

.field public static final TRUE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsLidOpen:Ljava/lang/Boolean;

.field public mLastReportedState:I

.field public final mLatestSensorEvent:Ljava/util/Map;

.field public mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

.field public final mLock:Ljava/lang/Object;

.field public final mOrderedStates:[Landroid/hardware/devicestate/DeviceState;

.field public mPowerSaveModeEnabled:Z

.field public final mStateConditions:Landroid/util/SparseArray;

.field public mThermalStatus:I


# direct methods
.method public static synthetic $r8$lambda$bgz4Cv-Vfw4TPvy7PVfVmwLTs14()Z
    .locals 1

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic $r8$lambda$t8JSrrBv0J146lhB0w0iIONBa0A()Z
    .locals 1

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsLidOpen(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mIsLidOpen:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLatestSensorEvent(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 96
    new-instance v0, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->TRUE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    .line 97
    new-instance v0, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->FALSE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    .line 100
    new-instance v0, Landroid/hardware/devicestate/DeviceState;

    new-instance v1, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    const/4 v2, 0x0

    const-string v3, "DEFAULT"

    invoke-direct {v1, v2, v3}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;-><init>(ILjava/lang/String;)V

    .line 102
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->build()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/devicestate/DeviceState;-><init>(Landroid/hardware/devicestate/DeviceState$Configuration;)V

    sput-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->DEFAULT_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 3

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    .line 354
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 356
    iput-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    const/4 v0, -0x1

    .line 359
    iput v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    .line 364
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    const/4 v0, 0x0

    .line 366
    iput v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    .line 375
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "Number of device states must be equal to the number of device state conditions."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 378
    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    .line 380
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/devicestate/DeviceState;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/devicestate/DeviceState;

    .line 381
    new-instance v1, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 382
    iput-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Landroid/hardware/devicestate/DeviceState;

    .line 384
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/DeviceStateProviderImpl;->setStateConditions(Ljava/util/List;Ljava/util/List;)V

    .line 386
    const-class p3, Landroid/os/PowerManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManager;

    if-eqz p3, :cond_2

    .line 391
    invoke-static {p2}, Lcom/android/server/policy/DeviceStateProviderImpl;->hasThermalSensitiveState(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {p3, p0}, Landroid/os/PowerManager;->addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    .line 398
    :cond_1
    invoke-static {p2}, Lcom/android/server/policy/DeviceStateProviderImpl;->hasPowerSaveSensitiveState(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 399
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 401
    new-instance v0, Lcom/android/server/policy/DeviceStateProviderImpl$1;

    invoke-direct {v0, p0, p3}, Lcom/android/server/policy/DeviceStateProviderImpl$1;-><init>(Lcom/android/server/policy/DeviceStateProviderImpl;Landroid/os/PowerManager;)V

    .line 410
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public static addFlagByString(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 321
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "FLAG_UNSUPPORTED_WHEN_THERMAL_STATUS_CRITICAL"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string v3, "FLAG_UNSUPPORTED_WHEN_POWER_SAVE_MODE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string v3, "FLAG_CANCEL_WHEN_REQUESTER_NOT_ON_TOP"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v3, "FLAG_CANCEL_OVERRIDE_REQUESTS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v3, "FLAG_APP_INACCESSIBLE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v3, "FLAG_EMULATED_ONLY"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 342
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parsed unknown flag with name: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceStateProviderImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const/4 p0, 0x6

    .line 339
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 338
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    const/4 p0, 0x7

    .line 335
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 332
    :pswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 329
    :pswitch_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_4
    const/16 p0, 0x9

    .line 323
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_5
    const/16 p0, 0xa

    .line 326
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4445fa39 -> :sswitch_5
        -0x439e3374 -> :sswitch_4
        -0x3ed3563b -> :sswitch_3
        -0x35acdc89 -> :sswitch_2
        0x223e2ba3 -> :sswitch_1
        0x639d1bdc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static addPropertyByString(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0x10

    const/16 v5, 0xf

    const/16 v6, 0xe

    const/16 v7, 0xd

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/16 v10, 0xa

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x2

    const/16 v19, 0x1

    .line 244
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const/16 v20, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    const/16 v21, 0x11

    goto/16 :goto_0

    :sswitch_0
    const/16 v21, 0x11

    const-string v3, "com.android.server.policy.PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_OUTER_PRIMARY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    move/from16 v20, v21

    goto/16 :goto_0

    :sswitch_1
    const/16 v21, 0x11

    const-string v3, "com.android.server.policy.PROPERTY_POLICY_CANCEL_OVERRIDE_REQUESTS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    move/from16 v20, v4

    goto/16 :goto_0

    :sswitch_2
    const/16 v21, 0x11

    const-string v3, "com.android.server.policy.PROPERTY_FEATURE_REAR_DISPLAY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    :cond_2
    move/from16 v20, v5

    goto/16 :goto_0

    :sswitch_3
    const/16 v21, 0x11

    const-string v3, "com.android.server.policy.PROPERTY_POLICY_UNSUPPORTED_WHEN_POWER_SAVE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0

    :cond_3
    move/from16 v20, v6

    goto/16 :goto_0

    :sswitch_4
    const/16 v21, 0x11

    const-string v3, "com.android.server.policy.PROPERTY_EXTENDED_DEVICE_STATE_EXTERNAL_DISPLAY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_0

    :cond_4
    move/from16 v20, v7

    goto/16 :goto_0

    :sswitch_5
    const/16 v21, 0x11

    const-string v3, "com.android.server.policy.PROPERTY_POLICY_AVAILABLE_FOR_APP_REQUEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_0

    :cond_5
    move/from16 v20, v8

    goto/16 :goto_0

    :sswitch_6
    const/16 v21, 0x11

    const-string v3, "com.android.server.policy.PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_HALF_OPEN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_0

    :cond_6
    move/from16 v20, v9

    goto/16 :goto_0

    :sswitch_7
    const/16 v21, 0x11

    const-string v3, "com.android.server.policy.PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_INNER_PRIMARY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_0

    :cond_7
    move/from16 v20, v10

    goto/16 :goto_0

    :sswitch_8
    const/16 v21, 0x11

    const-string v3, "com.android.server.policy.PROPERTY_POWER_CONFIGURATION_TRIGGER_WAKE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_0

    :cond_8
    move/from16 v20, v11

    goto/16 :goto_0

    :sswitch_9
    const/16 v21, 0x11

    const-string v3, "com.android.server.policy.PROPERTY_FEATURE_DUAL_DISPLAY_INTERNAL_DEFAULT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_0

    :cond_9
    move/from16 v20, v12

    goto/16 :goto_0

    :sswitch_a
    const/16 v21, 0x11

    const-string v3, "com.android.server.policy.PROPERTY_POLICY_CANCEL_WHEN_REQUESTER_NOT_ON_TOP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_0

    :cond_a
    move/from16 v20, v13

    goto/16 :goto_0

    :sswitch_b
    const/16 v21, 0x11

    const-string v3, "com.android.server.policy.PROPERTY_POLICY_UNSUPPORTED_WHEN_THERMAL_STATUS_CRITICAL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_0

    :cond_b
    move/from16 v20, v14

    goto :goto_0

    :sswitch_c
    const/16 v21, 0x11

    const-string v3, "com.android.server.policy.PROPERTY_FEATURE_REAR_DISPLAY_OUTER_DEFAULT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_0

    :cond_c
    move/from16 v20, v15

    goto :goto_0

    :sswitch_d
    const/16 v21, 0x11

    const-string v3, "com.android.server.policy.PROPERTY_POWER_CONFIGURATION_TRIGGER_SLEEP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_0

    :cond_d
    move/from16 v20, v16

    goto :goto_0

    :sswitch_e
    const/16 v21, 0x11

    const-string v3, "com.android.server.policy.PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_OPEN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_0

    :cond_e
    move/from16 v20, v17

    goto :goto_0

    :sswitch_f
    const/16 v21, 0x11

    const-string v3, "com.android.server.policy.PROPERTY_EMULATED_ONLY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_0

    :cond_f
    move/from16 v20, v18

    goto :goto_0

    :sswitch_10
    const/16 v21, 0x11

    const-string v3, "com.android.server.policy.PROPERTY_APP_INACCESSIBLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_0

    :cond_10
    move/from16 v20, v19

    goto :goto_0

    :sswitch_11
    const/16 v21, 0x11

    const-string v3, "com.android.server.policy.PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_CLOSED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_0

    :cond_11
    const/16 v20, 0x0

    :goto_0
    packed-switch v20, :pswitch_data_0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsed unknown flag with name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceStateProviderImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 286
    :pswitch_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 285
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 260
    :pswitch_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 259
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 305
    :pswitch_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 272
    :pswitch_3
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 271
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 302
    :pswitch_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 301
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 276
    :pswitch_5
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 275
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 252
    :pswitch_6
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 251
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 290
    :pswitch_7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 289
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 298
    :pswitch_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 297
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 308
    :pswitch_9
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 264
    :pswitch_a
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 263
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 268
    :pswitch_b
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 267
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_c
    const/16 v0, 0x3e9

    .line 311
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 294
    :pswitch_d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 293
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 256
    :pswitch_e
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 255
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 282
    :pswitch_f
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 279
    :pswitch_10
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 248
    :pswitch_11
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 247
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a23b2cf -> :sswitch_11
        -0x72bbce1a -> :sswitch_10
        -0x66b0d153 -> :sswitch_f
        -0x61123cb1 -> :sswitch_e
        -0x57ea94e0 -> :sswitch_d
        -0x4e29ef65 -> :sswitch_c
        -0x42b4de97 -> :sswitch_b
        -0x11adf9fc -> :sswitch_a
        -0xb013857 -> :sswitch_9
        -0x2d45be5 -> :sswitch_8
        0x2aae3dfc -> :sswitch_7
        0x3af6fcf1 -> :sswitch_6
        0x3bcf1d05 -> :sswitch_5
        0x411507cc -> :sswitch_4
        0x463d0e30 -> :sswitch_3
        0x5b67cf1d -> :sswitch_2
        0x68a96952 -> :sswitch_1
        0x74f81b21 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/policy/DeviceStateProviderImpl;
    .locals 3

    .line 167
    invoke-static {}, Lcom/android/server/policy/DeviceStateProviderImpl;->getConfigurationFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 169
    invoke-static {p0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl;->createFromConfig(Landroid/content/Context;Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/DeviceStateProviderImpl;

    move-result-object p0

    return-object p0

    .line 171
    :cond_0
    new-instance v2, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;

    invoke-direct {v2, v0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;-><init>(Ljava/io/File;Lcom/android/server/policy/DeviceStateProviderImpl-IA;)V

    invoke-static {p0, v2}, Lcom/android/server/policy/DeviceStateProviderImpl;->createFromConfig(Landroid/content/Context;Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/DeviceStateProviderImpl;

    move-result-object p0

    return-object p0
.end method

.method public static createFromConfig(Landroid/content/Context;Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/DeviceStateProviderImpl;
    .locals 11

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 187
    invoke-static {p1}, Lcom/android/server/policy/DeviceStateProviderImpl;->parseConfig(Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/devicestate/config/DeviceStateConfig;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 190
    invoke-virtual {p1}, Lcom/android/server/policy/devicestate/config/DeviceStateConfig;->getDeviceState()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/devicestate/config/DeviceState;

    .line 191
    invoke-virtual {v2}, Lcom/android/server/policy/devicestate/config/DeviceState;->getIdentifier()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 192
    invoke-virtual {v2}, Lcom/android/server/policy/devicestate/config/DeviceState;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, ""

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/policy/devicestate/config/DeviceState;->getName()Ljava/lang/String;

    move-result-object v4

    .line 194
    :goto_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 196
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 198
    invoke-virtual {v2}, Lcom/android/server/policy/devicestate/config/DeviceState;->getProperties()Lcom/android/server/policy/devicestate/config/Properties;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    .line 200
    invoke-virtual {v7}, Lcom/android/server/policy/devicestate/config/Properties;->getProperty()Ljava/util/List;

    move-result-object v7

    move v9, v8

    .line 201
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 202
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 203
    invoke-static {v10, v5, v6}, Lcom/android/server/policy/DeviceStateProviderImpl;->addPropertyByString(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 211
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/policy/devicestate/config/DeviceState;->getFlags()Lcom/android/server/policy/devicestate/config/Flags;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 213
    invoke-virtual {v7}, Lcom/android/server/policy/devicestate/config/Flags;->getFlag()Ljava/util/List;

    move-result-object v7

    .line 214
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 215
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 216
    invoke-static {v9, v5}, Lcom/android/server/policy/DeviceStateProviderImpl;->addFlagByString(Ljava/lang/String;Ljava/util/Set;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 221
    :cond_2
    new-instance v7, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    invoke-direct {v7, v3, v4}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;-><init>(ILjava/lang/String;)V

    .line 223
    invoke-virtual {v7, v5}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->setSystemProperties(Ljava/util/Set;)Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    move-result-object v3

    .line 224
    invoke-virtual {v3, v6}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->setPhysicalProperties(Ljava/util/Set;)Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    move-result-object v3

    .line 225
    invoke-virtual {v3}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->build()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v3

    .line 226
    new-instance v4, Landroid/hardware/devicestate/DeviceState;

    invoke-direct {v4, v3}, Landroid/hardware/devicestate/DeviceState;-><init>(Landroid/hardware/devicestate/DeviceState$Configuration;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {v2}, Lcom/android/server/policy/devicestate/config/DeviceState;->getConditions()Lcom/android/server/policy/devicestate/config/Conditions;

    move-result-object v2

    .line 229
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 234
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 235
    sget-object p1, Lcom/android/server/policy/DeviceStateProviderImpl;->DEFAULT_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 236
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_4
    new-instance p1, Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public static getConfigurationFile()Ljava/io/File;
    .locals 3

    .line 819
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system/devicestate/"

    const-string v2, "device_state_configuration.xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 821
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 825
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "etc/devicestate/"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 827
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasPowerSaveSensitiveState(Ljava/util/List;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 935
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 936
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/devicestate/DeviceState;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static hasThermalSensitiveState(Ljava/util/List;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 925
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 926
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/devicestate/DeviceState;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isThermalStatusCriticalOrAbove(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static parseConfig(Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/devicestate/config/DeviceStateConfig;
    .locals 2

    .line 855
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;->openRead()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 857
    :try_start_2
    invoke-static {v0}, Lcom/android/server/policy/devicestate/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/policy/devicestate/config/DeviceStateConfig;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 858
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 855
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    if-eqz p0, :cond_1

    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 859
    const-string v0, "DeviceStateProviderImpl"

    const-string v1, "Encountered an error while reading device state config"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 657
    const-string p2, "DeviceStateProviderImpl"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    iget-object p2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 660
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastReportedState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerSaveModeEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mPowerSaveModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mThermalStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsLidOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mIsLidOpen:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    const-string v0, "  Sensor values:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 667
    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorEvent;

    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/DeviceStateProviderImpl;->toSensorValueString(Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 670
    :cond_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpSensorValues()V
    .locals 4

    .line 836
    const-string v0, "Sensor values:"

    const-string v1, "DeviceStateProviderImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 838
    iget-object v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorEvent;

    .line 839
    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/DeviceStateProviderImpl;->toSensorValueString(Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final findSensor(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 4

    .line 520
    iget-object p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/4 v0, -0x1

    .line 521
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 522
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 523
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 524
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    .line 525
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    if-nez v3, :cond_0

    goto :goto_1

    .line 531
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public notifyDeviceStateChangedIfNeeded()V
    .locals 5

    .line 581
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    if-nez v1, :cond_0

    .line 583
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 587
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Landroid/hardware/devicestate/DeviceState;

    array-length v3, v2

    const/4 v4, -0x1

    if-ge v1, v3, :cond_2

    .line 588
    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    :try_start_1
    iget-object v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/function/BooleanSupplier;

    invoke-interface {v3}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    goto :goto_1

    :catch_0
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_1
    if-ne v2, v4, :cond_3

    .line 616
    :try_start_2
    const-string v1, "DeviceStateProviderImpl"

    const-string v3, "No declared device states match any of the required conditions."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->dumpSensorValues()V

    :cond_3
    if-eq v2, v4, :cond_4

    .line 620
    iget v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    if-eq v2, v1, :cond_4

    .line 621
    iput v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    goto :goto_2

    :cond_4
    move v2, v4

    .line 624
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v2, v4, :cond_5

    .line 627
    iget-object p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    invoke-interface {p0, v2}, Lcom/android/server/devicestate/DeviceStateProvider$Listener;->onStateChanged(I)V

    :cond_5
    return-void

    .line 624
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 0

    .line 633
    iget-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 634
    :try_start_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mIsLidOpen:Ljava/lang/Boolean;

    .line 635
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    return-void

    :catchall_0
    move-exception p0

    .line 635
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final notifySupportedStatesChanged(I)V
    .locals 8

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 554
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 555
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    if-nez v2, :cond_0

    .line 556
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 559
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Landroid/hardware/devicestate/DeviceState;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 560
    iget v7, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    invoke-static {v7}, Lcom/android/server/policy/DeviceStateProviderImpl;->isThermalStatusCriticalOrAbove(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 565
    :cond_1
    iget-boolean v7, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mPowerSaveModeEnabled:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 569
    :cond_2
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 571
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/hardware/devicestate/DeviceState;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/devicestate/DeviceState;

    .line 573
    invoke-interface {v2, p0, p1}, Lcom/android/server/devicestate/DeviceStateProvider$Listener;->onSupportedDeviceStatesChanged([Landroid/hardware/devicestate/DeviceState;I)V

    return-void

    .line 571
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPowerSaveModeChanged(Z)V
    .locals 2

    .line 881
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 882
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mPowerSaveModeEnabled:Z

    if-eq v1, p1, :cond_1

    .line 883
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mPowerSaveModeEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 884
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifySupportedStatesChanged(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 888
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 644
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 645
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    return-void

    :catchall_0
    move-exception p0

    .line 646
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onThermalStatusChanged(I)V
    .locals 3

    .line 894
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 895
    :try_start_0
    iget v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    .line 896
    iput p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    .line 897
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    invoke-static {p1}, Lcom/android/server/policy/DeviceStateProviderImpl;->isThermalStatusCriticalOrAbove(I)Z

    move-result p1

    .line 901
    invoke-static {v1}, Lcom/android/server/policy/DeviceStateProviderImpl;->isThermalStatusCriticalOrAbove(I)Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 903
    const-string v0, "DeviceStateProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating supported device states due to thermal status change. isThermalStatusCriticalOrAbove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 905
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifySupportedStatesChanged(I)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 897
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setListener(Lcom/android/server/devicestate/DeviceStateProvider$Listener;)V
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    if-nez v1, :cond_0

    .line 544
    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    .line 545
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 546
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifySupportedStatesChanged(I)V

    .line 547
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 542
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Provider already has a listener set."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 545
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setStateConditions(Ljava/util/List;Ljava/util/List;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 423
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 425
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_7

    .line 426
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v6}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v6

    move-object/from16 v7, p2

    .line 431
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/policy/devicestate/config/Conditions;

    if-nez v8, :cond_1

    .line 435
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/devicestate/DeviceState;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 436
    iget-object v8, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    sget-object v9, Lcom/android/server/policy/DeviceStateProviderImpl;->FALSE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 438
    :cond_0
    iget-object v8, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    sget-object v9, Lcom/android/server/policy/DeviceStateProviderImpl;->TRUE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 449
    :cond_1
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 451
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 453
    invoke-virtual {v8}, Lcom/android/server/policy/devicestate/config/Conditions;->getLidSwitch()Lcom/android/server/policy/devicestate/config/LidSwitchCondition;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 455
    new-instance v13, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;

    invoke-virtual {v11}, Lcom/android/server/policy/devicestate/config/LidSwitchCondition;->getOpen()Z

    move-result v11

    invoke-direct {v13, v0, v11}, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;-><init>(Lcom/android/server/policy/DeviceStateProviderImpl;Z)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    .line 462
    :goto_1
    invoke-virtual {v8}, Lcom/android/server/policy/devicestate/config/Conditions;->getSensor()Ljava/util/List;

    move-result-object v8

    const/4 v13, 0x0

    .line 463
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_4

    .line 464
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/policy/devicestate/config/SensorCondition;

    .line 465
    invoke-virtual {v14}, Lcom/android/server/policy/devicestate/config/SensorCondition;->getType()Ljava/lang/String;

    move-result-object v15

    .line 466
    invoke-virtual {v14}, Lcom/android/server/policy/devicestate/config/SensorCondition;->getName()Ljava/lang/String;

    move-result-object v3

    .line 468
    invoke-virtual {v0, v15, v3}, Lcom/android/server/policy/DeviceStateProviderImpl;->findSensor(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v12

    if-nez v12, :cond_3

    .line 470
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to find Sensor with type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " and name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "DeviceStateProviderImpl"

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v3, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    sget-object v8, Lcom/android/server/policy/DeviceStateProviderImpl;->FALSE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    invoke-virtual {v3, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 481
    :cond_3
    new-instance v3, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;

    invoke-virtual {v14}, Lcom/android/server/policy/devicestate/config/SensorCondition;->getValue()Ljava/util/List;

    move-result-object v14

    invoke-direct {v3, v0, v12, v14}, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;-><init>(Lcom/android/server/policy/DeviceStateProviderImpl;Landroid/hardware/Sensor;Ljava/util/List;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-virtual {v9, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_4
    or-int/2addr v5, v11

    .line 487
    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 489
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    const/4 v8, 0x1

    if-le v3, v8, :cond_5

    .line 490
    iget-object v3, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;

    invoke-direct {v8, v10}, Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 491
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 493
    iget-object v3, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    const/4 v8, 0x0

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/function/BooleanSupplier;

    invoke-virtual {v3, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 496
    :cond_6
    iget-object v3, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    sget-object v8, Lcom/android/server/policy/DeviceStateProviderImpl;->TRUE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    invoke-virtual {v3, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    if-eqz v5, :cond_8

    .line 506
    const-class v1, Lcom/android/server/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerInternal;

    .line 508
    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerInternal;->registerLidSwitchCallback(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V

    .line 511
    :cond_8
    iget-object v1, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/SensorManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    const/4 v8, 0x0

    .line 512
    :goto_4
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v8, v3, :cond_9

    .line 513
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    const/4 v4, 0x0

    .line 514
    invoke-virtual {v1, v0, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method public final toSensorValueString(Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;)Ljava/lang/String;
    .locals 0

    .line 844
    const-string/jumbo p0, "null"

    if-nez p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 845
    :cond_1
    iget-object p0, p2, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    .line 846
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
