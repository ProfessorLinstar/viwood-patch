.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "DevicePolicyManagerServiceShellCommand.java"


# instance fields
.field public mComponent:Landroid/content/ComponentName;

.field public mProvisioningContext:Ljava/lang/String;

.field public final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public mSetDoOnly:Z

.field public mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mProvisioningContext:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    return-void
.end method

.method public static safeToString(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 198
    const-string p0, "SAFE"

    return-object p0

    :cond_0
    const-string p0, "UNSAFE"

    return-object p0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 76
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "mark-profile-owner-on-organization-owned-device"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :sswitch_1
    const-string v1, "force-security-logs"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v1, "set-profile-owner"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v1, "set-active-admin"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v1, "clear-freeze-period-record"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_5
    const-string v1, "is-operation-safe"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, "remove-active-admin"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_7
    const-string v1, "is-operation-safe-by-reason"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_8
    const-string/jumbo v1, "set-operation-safe"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_9
    const-string/jumbo v1, "list-owners"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_a
    const-string/jumbo v1, "set-device-owner"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_b
    const-string/jumbo v1, "list-policy-exempt-apps"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_c
    const-string v1, "force-network-logs"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 104
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->onInvalidCommand(Ljava/io/PrintWriter;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_2
    return p0

    .line 102
    :pswitch_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runMarkProfileOwnerOnOrganizationOwnedDevice(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_3
    return p0

    .line 100
    :pswitch_1
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runForceSecurityLogs(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_4
    return p0

    .line 98
    :pswitch_2
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runForceNetworkLogs(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_5

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_5
    return p0

    .line 96
    :pswitch_3
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runClearFreezePeriodRecord(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_6

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_6
    return p0

    .line 94
    :pswitch_4
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runRemoveActiveAdmin(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_7

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_7
    return p0

    .line 92
    :pswitch_5
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetProfileOwner(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_8

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_8
    return p0

    .line 90
    :pswitch_6
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetDeviceOwner(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_9

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_9
    return p0

    .line 88
    :pswitch_7
    :try_start_8
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetActiveAdmin(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_a

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_a
    return p0

    .line 86
    :pswitch_8
    :try_start_9
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runListPolicyExemptApps(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v0, :cond_b

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_b
    return p0

    .line 84
    :pswitch_9
    :try_start_a
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runListOwners(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v0, :cond_c

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_c
    return p0

    .line 82
    :pswitch_a
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetSafeOperation(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v0, :cond_d

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_d
    return p0

    .line 80
    :pswitch_b
    :try_start_c
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runIsSafeOperationByReason(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v0, :cond_e

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_e
    return p0

    .line 78
    :pswitch_c
    :try_start_d
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runIsSafeOperation(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v0, :cond_f

    .line 106
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_f
    return p0

    :goto_2
    if-eqz v0, :cond_10

    .line 75
    :try_start_e
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    :goto_3
    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x7bce5670 -> :sswitch_c
        -0x6c7042ec -> :sswitch_b
        -0x6ace5bf9 -> :sswitch_a
        -0x3ffc2fd1 -> :sswitch_9
        -0x35f34b02 -> :sswitch_8
        -0x358ebd5d -> :sswitch_7
        -0x2e4a238f -> :sswitch_6
        -0x226644ca -> :sswitch_5
        -0x1ffc3f59 -> :sswitch_4
        0x20a8d153 -> :sswitch_3
        0x2622c764 -> :sswitch_2
        0x4f01fcba -> :sswitch_1
        0x59fd14e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public onHelp()V
    .locals 3

    .line 64
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 65
    :try_start_0
    const-string v1, "DevicePolicyManager Service (device_policy) commands:\n\n"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->showHelp(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_0

    .line 64
    :try_start_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0
.end method

.method public final onInvalidCommand(Ljava/io/PrintWriter;Ljava/lang/String;)I
    .locals 1

    .line 110
    invoke-super {p0, p2}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 114
    :cond_0
    const-string p2, "Usage: \n"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->showHelp(Ljava/io/PrintWriter;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final parseArgs()V
    .locals 3

    .line 378
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 379
    const-string v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 383
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    goto :goto_0

    .line 385
    :cond_1
    const-string v1, "--device-owner-only"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 386
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mSetDoOnly:Z

    goto :goto_0

    .line 387
    :cond_2
    const-string v1, "--provisioning-context"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 388
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mProvisioningContext:Ljava/lang/String;

    goto :goto_0

    .line 390
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 393
    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public final parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 2

    .line 397
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 399
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid component "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final printAndGetSize(Ljava/io/PrintWriter;Ljava/util/Collection;Ljava/lang/String;)I
    .locals 1

    .line 212
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 213
    const-string/jumbo p0, "no %ss\n"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 p0, 0x0

    return p0

    .line 216
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p0

    .line 217
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "s"

    :goto_0
    filled-new-array {p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%d %s%s:\n"

    invoke-virtual {p1, p3, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return p0
.end method

.method public final runClearFreezePeriodRecord(Ljava/io/PrintWriter;)I
    .locals 2

    .line 338
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearSystemUpdatePolicyFreezePeriodRecord()V

    const/4 p0, 0x0

    .line 339
    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "Success\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return p0
.end method

.method public final runForceNetworkLogs(Ljava/io/PrintWriter;)I
    .locals 4

    .line 345
    :goto_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->forceNetworkLogs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 352
    const-string p0, "Success\n"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v0

    .line 349
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "We have to wait for %d milliseconds...\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 350
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method public final runForceSecurityLogs(Ljava/io/PrintWriter;)I
    .locals 4

    .line 358
    :goto_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->forceSecurityLogs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 365
    const-string p0, "Success\n"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v0

    .line 362
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "We have to wait for %d milliseconds...\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 363
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method public final runIsSafeOperation(Ljava/io/PrintWriter;)I
    .locals 3

    .line 180
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 181
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUnsafeOperationReason(I)I

    move-result p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 184
    :goto_0
    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->safeToString(Z)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {p0}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 183
    const-string v0, "Operation %s is %s. Reason: %s\n"

    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v2
.end method

.method public final runIsSafeOperationByReason(Ljava/io/PrintWriter;)I
    .locals 1

    .line 190
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 191
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSafeOperation(I)Z

    move-result p0

    .line 193
    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->safeToString(Z)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 192
    const-string v0, "Operations affected by %s are %s\n"

    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 p0, 0x0

    return p0
.end method

.method public final runListOwners(Ljava/io/PrintWriter;)I
    .locals 6

    .line 222
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->listAllOwners()Ljava/util/List;

    move-result-object v0

    .line 223
    const-string/jumbo v1, "owner"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->printAndGetSize(Ljava/io/PrintWriter;Ljava/util/Collection;Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_5

    .line 227
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/OwnerShellData;

    .line 228
    iget v4, v3, Lcom/android/server/devicepolicy/OwnerShellData;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/devicepolicy/OwnerShellData;->admin:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "User %2d: admin=%s"

    invoke-virtual {p1, v5, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 229
    iget-boolean v4, v3, Lcom/android/server/devicepolicy/OwnerShellData;->isDeviceOwner:Z

    if-eqz v4, :cond_1

    .line 230
    const-string v4, ",DeviceOwner"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    :cond_1
    iget-boolean v4, v3, Lcom/android/server/devicepolicy/OwnerShellData;->isProfileOwner:Z

    if-eqz v4, :cond_2

    .line 233
    const-string v4, ",ProfileOwner"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    :cond_2
    iget-boolean v4, v3, Lcom/android/server/devicepolicy/OwnerShellData;->isManagedProfileOwner:Z

    if-eqz v4, :cond_3

    .line 236
    iget v4, v3, Lcom/android/server/devicepolicy/OwnerShellData;->parentUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, ",ManagedProfileOwner(parentUserId=%d)"

    invoke-virtual {p1, v5, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 238
    :cond_3
    iget-boolean v3, v3, Lcom/android/server/devicepolicy/OwnerShellData;->isAffiliated:Z

    if-eqz v3, :cond_4

    .line 239
    const-string v3, ",Affiliated"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public final runListPolicyExemptApps(Ljava/io/PrintWriter;)I
    .locals 5

    .line 248
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->listPolicyExemptApps()Ljava/util/List;

    move-result-object v0

    .line 249
    const-string/jumbo v1, "policy exempt app"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->printAndGetSize(Ljava/io/PrintWriter;Ljava/util/Collection;Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_1

    .line 254
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 255
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "  %d: %s\n"

    invoke-virtual {p1, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final runMarkProfileOwnerOnOrganizationOwnedDevice(Ljava/io/PrintWriter;)I
    .locals 3

    .line 370
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    .line 371
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;IZ)V

    const/4 p0, 0x0

    .line 372
    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "Success\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return p0
.end method

.method public final runRemoveActiveAdmin(Ljava/io/PrintWriter;)I
    .locals 3

    .line 307
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    .line 308
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V

    .line 309
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Success: Admin removed %s\n"

    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 p0, 0x0

    return p0
.end method

.method public final runSetActiveAdmin(Ljava/io/PrintWriter;)I
    .locals 5

    .line 261
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    .line 262
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mProvisioningContext:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZILjava/lang/String;)V

    .line 264
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Success: Active admin set to component %s\n"

    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 p0, 0x0

    return p0
.end method

.method public final runSetDeviceOwner(Ljava/io/PrintWriter;)I
    .locals 7

    .line 269
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 272
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mProvisioningContext:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    goto :goto_0

    .line 280
    :catch_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 281
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 280
    const-string v3, "%s was already an admin for user %d. No need to set it again.\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move v2, v1

    .line 285
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    iget-boolean v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mSetDoOnly:Z

    xor-int/2addr v0, v6

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwner(Landroid/content/ComponentName;IZ)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setUserProvisioningState(II)V

    .line 301
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Success: Device owner set to package %s\n"

    invoke-virtual {p1, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 302
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Active admin set to component %s\n"

    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v1

    .line 287
    :cond_0
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t set package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as device owner."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    if-eqz v2, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 295
    :cond_1
    throw p1
.end method

.method public final runSetProfileOwner(Ljava/io/PrintWriter;)I
    .locals 5

    .line 314
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    .line 315
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mProvisioningContext:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZILjava/lang/String;)V

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setProfileOwner(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setUserProvisioningState(II)V

    .line 332
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 333
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 332
    const-string v0, "Success: Active admin and profile owner set to %s for user %d\n"

    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 p0, 0x0

    return p0

    .line 319
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t set component "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 320
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as profile owner for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 325
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 326
    throw p1
.end method

.method public final runSetSafeOperation(Ljava/io/PrintWriter;)I
    .locals 2

    .line 202
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 203
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 204
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setNextOperationSafety(II)V

    .line 206
    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    move-result-object p0

    .line 207
    invoke-static {v1}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 205
    const-string v0, "Next call to check operation %s will return %s\n"

    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 p0, 0x0

    return p0
.end method

.method public final showHelp(Ljava/io/PrintWriter;)V
    .locals 6

    const/4 p0, 0x0

    .line 120
    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "  help\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 121
    const-string v0, "    Prints this help text.\n\n"

    new-array v1, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 122
    const-string v0, "is-operation-safe"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "  %s <OPERATION_ID>\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 123
    const-string v0, "    Checks if the give operation is safe \n\n"

    new-array v1, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 124
    const-string v0, "is-operation-safe-by-reason"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "  %s <REASON_ID>\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 125
    const-string v0, "    Checks if the operations are safe for the given reason\n\n"

    new-array v1, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 126
    const-string/jumbo v0, "set-operation-safe"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "  %s <OPERATION_ID> <REASON_ID>\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 127
    const-string v0, "    Emulates the result of the next call to check if the given operation is safe \n\n"

    new-array v1, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 129
    const-string/jumbo v0, "list-owners"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "  %s\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 130
    const-string v0, "    Lists the device / profile owners per user \n\n"

    new-array v2, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 131
    const-string/jumbo v0, "list-policy-exempt-apps"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 132
    const-string v0, "    Lists the apps that are exempt from policies\n\n"

    new-array v2, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 134
    const-string/jumbo v0, "set-active-admin"

    const-string v2, "--user"

    const-string v3, "--provisioning-context"

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "  %s [ %s <USER_ID> | current ] [ %s <PROVISIONING_CONTEXT>] <COMPONENT>\n"

    invoke-virtual {p1, v4, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 136
    const-string v0, "    Sets the given component as active admin for an existing user.\n\n"

    new-array v5, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 137
    const-string/jumbo v0, "set-device-owner"

    const-string v5, "--device-owner-only"

    filled-new-array {v0, v2, v5, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "  %s [ %s <USER_ID> | current *EXPERIMENTAL* ] [ %s ] [ %s <PROVISIONING_CONTEXT>] <COMPONENT>\n"

    invoke-virtual {p1, v5, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 140
    const-string v0, "    Sets the given component as active admin, and its package as device owner.\n\n"

    new-array v5, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 142
    const-string/jumbo v0, "set-profile-owner"

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 155
    const-string v0, "    Sets the given component as active admin and profile owner for an existing user.\n\n"

    new-array v3, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 157
    const-string/jumbo v0, "remove-active-admin"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "  %s [ %s <USER_ID> | current ] <COMPONENT>\n"

    invoke-virtual {p1, v3, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 159
    const-string v0, "    Disables an active admin, the admin must have declared android:testOnly in the application in its manifest. This will also remove device and profile owners.\n\n"

    new-array v4, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 162
    const-string v0, "clear-freeze-period-record"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 163
    const-string v0, "    Clears framework-maintained record of past freeze periods that the device went through. For use during feature development to prevent triggering restriction on setting freeze periods.\n\n"

    new-array v4, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 166
    const-string v0, "force-network-logs"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 167
    const-string v0, "    Makes all network logs available to the DPC and triggers DeviceAdminReceiver.onNetworkLogsAvailable() if needed.\n\n"

    new-array v4, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 169
    const-string v0, "force-security-logs"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 170
    const-string v0, "    Makes all security logs available to the DPC and triggers DeviceAdminReceiver.onSecurityLogsAvailable() if needed.\n\n"

    new-array v1, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 172
    const-string/jumbo v0, "mark-profile-owner-on-organization-owned-device"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 174
    const-string v0, "    Marks the profile owner of the given user as managing an organization-owneddevice. That will give it access to device identifiers (such as serial number, IMEI and MEID), as well as other privileges.\n\n"

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method
