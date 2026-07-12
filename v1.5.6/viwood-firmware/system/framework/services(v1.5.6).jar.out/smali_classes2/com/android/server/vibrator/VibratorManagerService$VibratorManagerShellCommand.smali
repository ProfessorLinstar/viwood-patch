.class public final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "VibratorManagerService.java"


# instance fields
.field public final mShellCallbacksToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;)V
    .locals 0

    .line 2607
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2608
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mShellCallbacksToken:Landroid/os/IBinder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;Lcom/android/server/vibrator/VibratorManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;)V

    return-void
.end method

.method public static parseFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 1

    .line 3100
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 3092
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3094
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final addEnvelopeToComposition(Landroid/os/VibrationEffect$Composition;)V
    .locals 10

    const/4 v0, 0x1

    .line 2849
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    const/4 v1, -0x1

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/4 v3, 0x0

    move v5, v1

    move v4, v3

    .line 2855
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2856
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_1
    move v6, v1

    goto :goto_2

    :sswitch_0
    const-string v7, "-r"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x2

    goto :goto_2

    :sswitch_1
    const-string v7, "-i"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move v6, v0

    goto :goto_2

    :sswitch_2
    const-string v7, "-a"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_2
    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 2860
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Expected repeat index after -r"

    invoke-static {v5, v6}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 2858
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Expected initial sharpness after -i"

    invoke-static {v2, v6}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    goto :goto_0

    :pswitch_2
    move v4, v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    if-eqz v4, :cond_4

    .line 2865
    new-instance v4, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;

    invoke-direct {v4, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;-><init>(Lcom/android/server/vibrator/VibratorManagerService-IA;)V

    goto :goto_3

    .line 2866
    :cond_4
    new-instance v4, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;

    invoke-direct {v4, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;-><init>(Lcom/android/server/vibrator/VibratorManagerService-IA;)V

    .line 2868
    :goto_3
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2869
    invoke-interface {v4, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;->setInitialSharpness(F)V

    :cond_5
    const/4 v2, 0x0

    .line 2875
    :goto_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    if-lez v3, :cond_6

    if-ne v3, v5, :cond_6

    .line 2877
    invoke-interface {v4}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v1

    .line 2878
    invoke-interface {v4, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;->reset(F)V

    .line 2881
    :cond_6
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2882
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2887
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Expected envelope intensity"

    invoke-static {v6, v7}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v6

    .line 2888
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Expected envelope sharpness"

    invoke-static {v7, v8}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v7

    int-to-long v8, v2

    .line 2889
    invoke-interface {v4, v6, v7, v8, v9}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;->addControlPoint(FFJ)V

    add-int/2addr v3, v0

    move v2, v7

    goto :goto_4

    :catch_0
    :cond_7
    if-ltz v5, :cond_9

    if-nez v1, :cond_8

    .line 2895
    invoke-interface {v4}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-static {p0}, Landroid/os/VibrationEffect;->createRepeatingEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    goto :goto_5

    .line 2898
    :cond_8
    invoke-interface {v4}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/os/VibrationEffect;->createRepeatingEffect(Landroid/os/VibrationEffect;Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object p0

    .line 2897
    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    :goto_5
    return-void

    .line 2903
    :cond_9
    invoke-interface {v4}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x5d4 -> :sswitch_2
        0x5dc -> :sswitch_1
        0x5e5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final addOneShotToComposition(Landroid/os/VibrationEffect$Composition;)V
    .locals 4

    .line 2771
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    .line 2773
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2774
    const-string v3, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 2776
    :cond_1
    const-string v3, "-w"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2777
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Expected delay millis after -w"

    invoke-static {v1, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 2781
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Expected one-shot duration millis"

    invoke-static {v2, v3}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    if-eqz v0, :cond_3

    .line 2783
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Expected one-shot amplitude"

    invoke-static {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    :goto_1
    int-to-long v0, v1

    .line 2785
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/VibrationEffect$Composition;->addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;

    .line 2786
    invoke-static {v2, v3, p0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    return-void
.end method

.method public final addPrebakedToComposition(Landroid/os/VibrationEffect$Composition;)V
    .locals 4

    .line 3002
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    .line 3004
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3005
    const-string v3, "-b"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 3007
    :cond_1
    const-string v3, "-w"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3008
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Expected delay millis after -w"

    invoke-static {v0, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 3012
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Expected prebaked effect id"

    invoke-static {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    int-to-long v2, v0

    .line 3013
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/VibrationEffect$Composition;->addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;

    .line 3014
    invoke-static {p0, v1}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    return-void
.end method

.method public final addPrimitivesToComposition(Landroid/os/VibrationEffect$Composition;)V
    .locals 6

    .line 3018
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 3019
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    move v2, v0

    move v3, v2

    .line 3025
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 3026
    const-string v5, "-s"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3027
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Expected scale after -s"

    invoke-static {v1, v4}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v1

    goto :goto_1

    .line 3028
    :cond_1
    const-string v5, "-o"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3030
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Expected offset millis after -o"

    invoke-static {v2, v3}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    goto :goto_1

    .line 3031
    :cond_2
    const-string v5, "-w"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3033
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Expected delay millis after -w"

    invoke-static {v2, v3}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move v3, v0

    goto :goto_1

    .line 3037
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    .line 3038
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFII)Landroid/os/VibrationEffect$Composition;

    .line 3039
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_4
    return-void
.end method

.method public final addWaveformToComposition(Landroid/os/VibrationEffect$Composition;)V
    .locals 13

    const/4 v0, 0x1

    .line 2913
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v2

    .line 2915
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 2916
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_1
    move v8, v2

    goto :goto_2

    :sswitch_0
    const-string v9, "-w"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x4

    goto :goto_2

    :sswitch_1
    const-string v9, "-r"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x3

    goto :goto_2

    :sswitch_2
    const-string v9, "-f"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x2

    goto :goto_2

    :sswitch_3
    const-string v9, "-c"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    move v8, v0

    goto :goto_2

    :sswitch_4
    const-string v9, "-a"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    move v8, v1

    :goto_2
    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 2922
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    const-string v8, "Expected delay millis after -w"

    invoke-static {v5, v8}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 2920
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Expected repeat index after -r"

    invoke-static {v7, v8}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    :pswitch_2
    move v4, v0

    goto :goto_0

    :pswitch_3
    move v6, v0

    goto :goto_0

    :pswitch_4
    move v3, v0

    goto :goto_0

    .line 2926
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2927
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2928
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    .line 2932
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 2934
    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2935
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_7

    .line 2941
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Expected waveform amplitude"

    invoke-static {v11, v12}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v11, v12

    .line 2942
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2944
    :cond_7
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v10

    move v10, v11

    :goto_4
    if-eqz v4, :cond_6

    .line 2949
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Expected waveform frequency"

    invoke-static {v11, v12}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 2948
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catch_0
    :cond_8
    int-to-long v10, v5

    .line 2954
    invoke-static {v10, v11}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;

    .line 2956
    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object p0

    .line 2957
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_f

    if-eqz v6, :cond_9

    .line 2959
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v10, v3

    invoke-static {v10, v11}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v3

    goto :goto_6

    .line 2960
    :cond_9
    sget-object v3, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    :goto_6
    if-eqz v6, :cond_a

    .line 2962
    sget-object v5, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    goto :goto_7

    .line 2963
    :cond_a
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v10, v5

    invoke-static {v10, v11}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v5

    :goto_7
    if-eqz v4, :cond_b

    .line 2966
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-static {v10}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v10

    .line 2967
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-static {v11}, Landroid/os/VibrationEffect$VibrationParameter;->targetFrequency(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v11

    .line 2966
    invoke-virtual {p0, v3, v10, v11}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    goto :goto_8

    .line 2969
    :cond_b
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-static {v10}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v10

    invoke-virtual {p0, v3, v10}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 2971
    :goto_8
    invoke-virtual {v5}, Ljava/time/Duration;->isZero()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2974
    invoke-virtual {p0, v5}, Landroid/os/VibrationEffect$WaveformBuilder;->addSustain(Ljava/time/Duration;)Landroid/os/VibrationEffect$WaveformBuilder;

    :cond_c
    if-lez v1, :cond_e

    if-ne v1, v7, :cond_e

    .line 2979
    invoke-virtual {p0}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    if-eqz v4, :cond_d

    .line 2982
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object p0

    .line 2983
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Landroid/os/VibrationEffect$VibrationParameter;->targetFrequency(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v3

    .line 2982
    invoke-static {p0, v3}, Landroid/os/VibrationEffect;->startWaveform(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object p0

    goto :goto_9

    .line 2986
    :cond_d
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object p0

    .line 2985
    invoke-static {p0}, Landroid/os/VibrationEffect;->startWaveform(Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object p0

    :cond_e
    :goto_9
    add-int/2addr v1, v0

    goto/16 :goto_5

    :cond_f
    if-gez v7, :cond_10

    .line 2991
    invoke-virtual {p0}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    goto :goto_a

    .line 2994
    :cond_10
    invoke-virtual {p0}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect$Composition;->repeatEffectIndefinitely(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    :goto_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x5d4 -> :sswitch_4
        0x5d6 -> :sswitch_3
        0x5d9 -> :sswitch_2
        0x5e5 -> :sswitch_1
        0x5ea -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)Landroid/os/VibrationAttributes;
    .locals 0

    .line 3049
    iget-boolean p0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->force:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3050
    :goto_0
    new-instance p1, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {p1}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 3051
    invoke-virtual {p1, p0}, Landroid/os/VibrationAttributes$Builder;->setFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    const/16 p1, 0x41

    .line 3054
    invoke-virtual {p0, p1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    .line 3055
    invoke-virtual {p0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0
.end method

.method public final maybeWaitOnVibration(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 3077
    iget-boolean p2, p2, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    if-nez p2, :cond_0

    .line 3081
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/vibrator/HalVibration;->waitForEnd()V

    .line 3083
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibrationThread(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 3084
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->getRampDownDuration()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    .line 3083
    invoke-virtual {p1, v0, v1}, Lcom/android/server/vibrator/VibrationThread;->waitForThreadIdle(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final nextEffect()Landroid/os/VibrationEffect;
    .locals 3

    .line 2744
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 2747
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2748
    const-string/jumbo v2, "oneshot"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2749
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addOneShotToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_0

    .line 2750
    :cond_0
    const-string/jumbo v2, "waveform"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2751
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addWaveformToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_0

    .line 2752
    :cond_1
    const-string/jumbo v2, "prebaked"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2753
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addPrebakedToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_0

    .line 2754
    :cond_2
    const-string/jumbo v2, "primitives"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2755
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addPrimitivesToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_0

    .line 2756
    :cond_3
    const-string v2, "envelope"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2757
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addEnvelopeToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_0

    .line 2764
    :cond_4
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 3

    const-wide/32 v0, 0x800000

    .line 2614
    :try_start_0
    const-string v2, "list"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2615
    const-string/jumbo p1, "onCommand: list"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2616
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runListVibrators()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2645
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_0
    move-exception p0

    goto/16 :goto_0

    .line 2618
    :cond_0
    :try_start_1
    const-string/jumbo v2, "synced"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2619
    const-string/jumbo p1, "onCommand: synced"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2620
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runMono()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2645
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 2622
    :cond_1
    :try_start_2
    const-string v2, "combined"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2623
    const-string/jumbo p1, "onCommand: combined"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2624
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runStereo()I

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2645
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 2626
    :cond_2
    :try_start_3
    const-string/jumbo v2, "sequential"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2627
    const-string/jumbo p1, "onCommand: sequential"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2628
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runSequential()I

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2645
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 2630
    :cond_3
    :try_start_4
    const-string/jumbo v2, "xml"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2631
    const-string/jumbo p1, "onCommand: xml"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2632
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runXml()I

    move-result p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2645
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 2634
    :cond_4
    :try_start_5
    const-string v2, "cancel"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2635
    const-string/jumbo p1, "onCommand: cancel"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2636
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runCancel()I

    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2645
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 2638
    :cond_5
    :try_start_6
    const-string v2, "feedback"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2639
    const-string/jumbo p1, "onCommand: feedback"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2640
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runHapticFeedback()I

    move-result p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2645
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 2642
    :cond_6
    :try_start_7
    const-string/jumbo v2, "onCommand: default"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2643
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2645
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2646
    throw p0
.end method

.method public onHelp()V
    .locals 4

    .line 3108
    const-string v0, "    wait time in milliseconds."

    const-string v1, "    If -w is provided, the effect will be played after the specified"

    const-string v2, ""

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 3109
    :try_start_0
    const-string v3, "Vibrator Manager commands:"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3110
    const-string v3, "  help"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3111
    const-string v3, "    Prints this help text."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3112
    const-string v3, "  list"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3113
    const-string v3, "    Prints device vibrator ids; does not include input devices."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3114
    const-string v3, "  synced [options] <effect>..."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3115
    const-string v3, "    Vibrates effect on all vibrators in sync."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3116
    const-string v3, "  combined [options] (-v <vibrator-id> <effect>...)..."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3117
    const-string v3, "    Vibrates different effects on each vibrator in sync."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3118
    const-string v3, "  sequential [options] (-v <vibrator-id> <effect>...)..."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3119
    const-string v3, "    Vibrates different effects on each vibrator in sequence."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3120
    const-string v3, "  xml [options] <xml>"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3121
    const-string v3, "    Vibrates using combined vibration described in given XML string"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3122
    const-string v3, "    on all vibrators in sync. The XML could be:"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3123
    const-string v3, "        A single <vibration-effect>, or"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3124
    const-string v3, "        A <vibration-select> containing multiple effects."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3125
    const-string v3, "  feedback [options] <constant>"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3126
    const-string v3, "    Performs a haptic feedback with the given constant."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3127
    const-string v3, "  cancel"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3128
    const-string v3, "    Cancels any active vibration"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3129
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3130
    const-string v3, "Effect commands:"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3131
    const-string v3, "  oneshot [-w delay] [-a] <duration> [<amplitude>]"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3132
    const-string v3, "    Vibrates for duration milliseconds."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3133
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3134
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3135
    const-string v3, "    If -a is provided, the command accepts a second argument for "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3136
    const-string v3, "    amplitude, in a scale of 1-255."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3137
    const-string v3, "  waveform [-w delay] [-r index] [-a] [-f] [-c] "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3138
    const-string v3, "(<duration> [<amplitude>] [<frequency>])..."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3139
    const-string v3, "    Vibrates for durations and amplitudes in list."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3140
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3141
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3142
    const-string v3, "    If -r is provided, the waveform loops back to the specified"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3143
    const-string v3, "    index (e.g. 0 loops from the beginning)."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3144
    const-string v3, "    If -a is provided, the command expects amplitude to follow each"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3145
    const-string v3, "    duration; otherwise, it accepts durations only and alternates"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3146
    const-string v3, "    off/on."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3147
    const-string v3, "    If -f is provided, the command expects frequency to follow each"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3148
    const-string v3, "    amplitude or duration; otherwise, it uses resonant frequency."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3149
    const-string v3, "    If -c is provided, the waveform is continuous and will ramp"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3150
    const-string v3, "    between values; otherwise each entry is a fixed step."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3151
    const-string v3, "    Duration is in milliseconds; amplitude is a scale of 1-255;"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3152
    const-string v3, "    frequency is an absolute value in hertz."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3153
    const-string v3, "  envelope [-a] [-i initial sharpness] [-r index]  "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3154
    const-string v3, "[<duration1> <intensity1> <sharpness1>]..."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3155
    const-string v3, "    Generates a vibration pattern based on a series of duration, "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3156
    const-string v3, "    intensity, and sharpness values. The total vibration time is "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3157
    const-string v3, "    the sum of all durations."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3158
    const-string v3, "    If -a is provided, the waveform will use the advanced APIs to "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3159
    const-string v3, "    generate the vibration pattern and the input parameters "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3160
    const-string v3, "    become [<duration1> <amplitude1> <frequency1>]."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3161
    const-string v3, "    If -i is provided, the waveform will have an initial sharpness "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3162
    const-string v3, "    it will start from."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3163
    const-string v3, "    If -r is provided, the waveform loops back to the specified index"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3164
    const-string v3, "    (e.g. 0 loops from the beginning)."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3165
    const-string v3, "  prebaked [-w delay] [-b] <effect-id>"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3166
    const-string v3, "    Vibrates with prebaked effect."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3167
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3168
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3169
    const-string v0, "    If -b is provided, the prebaked fallback effect will be played if"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3170
    const-string v0, "    the device doesn\'t support the given effect-id."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3171
    const-string v0, "  primitives ([-w delay] [-o time] [-s scale]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3172
    const-string v0, "<primitive-id> [<scale>])..."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3173
    const-string v0, "    Vibrates with a composed effect."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3174
    const-string v0, "    If -w is provided, the next primitive will be played after the "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3175
    const-string v0, "    specified wait time in milliseconds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3176
    const-string v0, "    If -o is provided, the next primitive will be played at the "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3177
    const-string v0, "    specified start offset time in milliseconds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3178
    const-string v0, "    If -s is provided, the next primitive will be played with the"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3179
    const-string v0, "    specified amplitude scale, in a scale of [0,1]."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3180
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3181
    const-string v0, "Common Options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3182
    const-string v0, "  -f"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3183
    const-string v0, "    Force. Ignore Do Not Disturb setting."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3184
    const-string v0, "  -B"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3185
    const-string v0, "    Run in the background; without this option the shell cmd will"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3186
    const-string v0, "    block until the vibration has completed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3187
    const-string v0, "  -d <description>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3188
    const-string v0, "    Add description to the vibration."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3189
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3190
    const-string v0, "Notes"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3191
    const-string v0, "    Vibrations triggered by these commands will be ignored when"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3192
    const-string v0, "    device is on DND (Do Not Disturb) mode; notification strength"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3193
    const-string v0, "    user settings will be applied for scale."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3194
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3195
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 3108
    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
.end method

.method public final parseXml(Ljava/lang/String;)Landroid/os/CombinedVibration;
    .locals 3

    .line 3060
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 3061
    invoke-static {v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocument(Ljava/io/Reader;)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object v0

    .line 3062
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mgetCombinedVibratorInfo(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/os/VibratorInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3066
    invoke-virtual {v0, p0}, Landroid/os/vibrator/persistence/ParsedVibration;->resolve(Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3070
    invoke-static {p0}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 3068
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsed XML cannot be resolved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3064
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No vibrator info available to parse XML"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3072
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing XML: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final runCancel()I
    .locals 1

    .line 2723
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p0}, Lcom/android/server/vibrator/VibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runHapticFeedback()I
    .locals 12

    .line 2728
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    .line 2729
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Expected haptic feedback constant id"

    invoke-static {v1, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2731
    iget-boolean v1, v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    :goto_0
    move-object v9, v1

    goto :goto_1

    .line 2732
    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mShellCallbacksToken:Landroid/os/IBinder;

    goto :goto_0

    .line 2733
    :goto_1
    iget-boolean v1, v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->force:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    move v10, v1

    goto :goto_2

    :cond_1
    move v10, v2

    .line 2735
    :goto_2
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iget-object v8, v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v5, 0x0

    const-string v6, "com.android.shell"

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackInternal(IILjava/lang/String;ILjava/lang/String;Landroid/os/IBinder;II)Lcom/android/server/vibrator/HalVibration;

    move-result-object v1

    .line 2738
    invoke-virtual {p0, v1, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->maybeWaitOnVibration(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)V

    return v2
.end method

.method public final runListVibrators()I
    .locals 5

    .line 2650
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2651
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibratorIds(Lcom/android/server/vibrator/VibratorManagerService;)[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2652
    const-string p0, "No vibrator found"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2654
    :cond_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibratorIds(Lcom/android/server/vibrator/VibratorManagerService;)[I

    move-result-object p0

    array-length v1, p0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p0, v3

    .line 2655
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2658
    :cond_1
    :goto_1
    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2660
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return v2

    :goto_2
    if-eqz v0, :cond_2

    .line 2650
    :try_start_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p0
.end method

.method public final runMono()I
    .locals 2

    .line 2683
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-static {v1}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runSequential()I
    .locals 4

    .line 2700
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    .line 2702
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v1

    .line 2703
    :goto_0
    const-string v2, "-v"

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2704
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Expected vibrator id after -v"

    invoke-static {v2, v3}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2705
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$SequentialCombination;

    goto :goto_0

    .line 2707
    :cond_0
    invoke-virtual {v1}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runStereo()I
    .locals 4

    .line 2688
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    .line 2690
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v1

    .line 2691
    :goto_0
    const-string v2, "-v"

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2692
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Expected vibrator id after -v"

    invoke-static {v2, v3}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2693
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    goto :goto_0

    .line 2695
    :cond_0
    invoke-virtual {v1}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V
    .locals 8

    .line 2667
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->createVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)Landroid/os/VibrationAttributes;

    move-result-object v5

    .line 2671
    iget-boolean v0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    :goto_0
    move-object v7, v0

    goto :goto_1

    .line 2672
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mShellCallbacksToken:Landroid/os/IBinder;

    goto :goto_0

    .line 2673
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2676
    const-string v0, "com.android.shell"

    invoke-static {v1, v0}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2677
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    const/4 v2, 0x0

    iget-object v6, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateWithPermissionCheck(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;

    move-result-object p2

    .line 2679
    invoke-virtual {p0, p2, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->maybeWaitOnVibration(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)V

    return-void
.end method

.method public final runXml()I
    .locals 2

    .line 2712
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    .line 2713
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2714
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseXml(Ljava/lang/String;)Landroid/os/CombinedVibration;

    move-result-object v1

    .line 2715
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V

    const/4 p0, 0x0

    return p0
.end method
