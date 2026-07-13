.class public Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;
.super Landroid/os/ShellCommand;
.source "TestHarnessModeService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/testharness/TestHarnessModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/testharness/TestHarnessModeService;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/testharness/TestHarnessModeService;Lcom/android/server/testharness/TestHarnessModeService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;-><init>(Lcom/android/server/testharness/TestHarnessModeService;)V

    return-void
.end method


# virtual methods
.method public final checkPermissions()V
    .locals 2

    .line 333
    iget-object p0, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.ENABLE_TEST_HARNESS_MODE"

    const-string v1, "You must hold android.permission.ENABLE_TEST_HARNESS_MODE to enable Test Harness Mode"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getBytesFromFile(Ljava/io/File;)[B
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    .line 379
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 382
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    .line 383
    new-array p0, p0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, p0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    .line 384
    :try_start_0
    invoke-static {p1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v0

    long-to-int p1, v0

    .line 385
    new-array v0, p1, [B

    .line 386
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_1

    .line 391
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0

    .line 388
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to read the whole file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 383
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1

    .line 380
    :cond_3
    :goto_1
    new-array p0, p0, [B

    return-object p0
.end method

.method public final handleEnable()I
    .locals 6

    .line 345
    const-string v0, "Failed to enable Test Harness Mode"

    const-string v1, "ShellCommand"

    const-class v2, Landroid/debug/AdbManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/debug/AdbManagerInternal;

    .line 346
    invoke-virtual {v2}, Landroid/debug/AdbManagerInternal;->getAdbKeysFile()Ljava/io/File;

    move-result-object v3

    .line 347
    invoke-virtual {v2}, Landroid/debug/AdbManagerInternal;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x1

    .line 350
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v3

    .line 351
    invoke-virtual {p0, v2}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v2

    .line 353
    new-instance v5, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;

    invoke-direct {v5, v3, v2}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;-><init>([B[B)V

    .line 354
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-static {v2}, Lcom/android/server/testharness/TestHarnessModeService;->-$$Nest$mgetPersistentDataBlock(Lcom/android/server/testharness/TestHarnessModeService;)Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    move-result-object v2

    if-nez v2, :cond_0

    .line 356
    const-string v2, "Failed to enable Test Harness Mode. No implementation of PersistentDataBlockManagerInternal was bound."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :catch_0
    move-exception v2

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->toBytes()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;->setTestHarnessModeData([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.FACTORY_RESET"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    const-string v2, "android"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 370
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 371
    const-string v2, "android.intent.extra.REASON"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const-string v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 373
    iget-object v1, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-static {v1}, Lcom/android/server/testharness/TestHarnessModeService;->-$$Nest$fgetmEnableKeepMemtagMode(Lcom/android/server/testharness/TestHarnessModeService;)Z

    move-result v1

    const-string v2, "keep_memtag_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 374
    iget-object p0, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p0, 0x0

    return p0

    .line 363
    :goto_0
    const-string v3, "Failed to store ADB keys."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4
.end method

.method public final isDeviceSecure()Z
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 341
    iget-object p0, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-static {p0}, Lcom/android/server/testharness/TestHarnessModeService;->-$$Nest$mgetMainUserId(Lcom/android/server/testharness/TestHarnessModeService;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 3

    if-nez p1, :cond_0

    .line 297
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 299
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string v0, "enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "restore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 303
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 304
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/4 v0, 0x1

    const-string v1, "--keep-memtag"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 309
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 306
    :cond_2
    iget-object p1, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-static {p1, v0}, Lcom/android/server/testharness/TestHarnessModeService;->-$$Nest$fputmEnableKeepMemtagMode(Lcom/android/server/testharness/TestHarnessModeService;Z)V

    goto :goto_0

    .line 314
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->checkPermissions()V

    .line 315
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 317
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->isDeviceSecure()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 318
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Test Harness Mode cannot be enabled if there is a lock screen"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x2

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 323
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->handleEnable()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    throw p0
.end method

.method public onHelp()V
    .locals 1

    .line 396
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 397
    const-string v0, "About:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    const-string v0, "  Test Harness Mode is a mode that the device can be placed in to prepare"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    const-string v0, "  the device for running UI tests. The device is placed into this mode by"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    const-string v0, "  first wiping all data from the device, preserving ADB keys."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 402
    const-string v0, "  By default, the following settings are configured:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    const-string v0, "    * Package Verifier is disabled"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    const-string v0, "    * Stay Awake While Charging is enabled"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    const-string v0, "    * OTA Updates are disabled"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    const-string v0, "    * Auto-Sync for accounts is disabled"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 408
    const-string v0, "  Other apps may configure themselves differently in Test Harness Mode by"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    const-string v0, "  checking ActivityManager.isRunningInUserTestHarness()"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 411
    const-string v0, "Test Harness Mode commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 415
    const-string v0, "  enable|restore"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    const-string v0, "    Erase all data from this device and enable Test Harness Mode,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    const-string v0, "    preserving the stored ADB keys currently on the device and toggling"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    const-string v0, "    settings in a way that are conducive to Instrumentation testing."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
