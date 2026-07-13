.class public final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"


# instance fields
.field public background:Z

.field public description:Ljava/lang/String;

.field public force:Z


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V
    .locals 5

    const/4 v0, 0x1

    .line 2581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2577
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->force:Z

    .line 2578
    const-string v2, "Shell command"

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    .line 2579
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    .line 2583
    :goto_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2584
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "-f"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    const-string v4, "-d"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v0

    goto :goto_1

    :sswitch_2
    const-string v4, "-B"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 2586
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2587
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->force:Z

    goto :goto_0

    .line 2594
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2595
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    goto :goto_0

    .line 2590
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2591
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    goto :goto_0

    :cond_3
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x5b5 -> :sswitch_2
        0x5d7 -> :sswitch_1
        0x5d9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
