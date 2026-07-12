.class public Lcom/android/server/am/ActivityManagerService$13;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field public final synthetic val$dataFile:Ljava/io/File;

.field public final synthetic val$dbox:Landroid/os/DropBoxManager;

.field public final synthetic val$dropboxTag:Ljava/lang/String;

.field public final synthetic val$process:Lcom/android/server/am/ProcessRecord;

.field public final synthetic val$report:Ljava/lang/String;

.field public final synthetic val$runSynchronously:Z

.field public final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;ZLandroid/os/DropBoxManager;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 10024
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$13;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dropboxTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dataFile:Ljava/io/File;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$13;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-boolean p8, p0, Lcom/android/server/am/ActivityManagerService$13;->val$runSynchronously:Z

    iput-object p9, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dbox:Landroid/os/DropBoxManager;

    iput-object p10, p0, Lcom/android/server/am/ActivityManagerService$13;->val$process:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 10027
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$13;->val$report:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 10028
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10031
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "logcat_for_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "kernel_logs_for_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10033
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "max_error_bytes_for_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10034
    sget-boolean v3, Landroid/os/Build;->IS_USER:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move v0, v4

    goto :goto_0

    .line 10036
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    .line 10039
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 10040
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 10041
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/high16 v3, 0x30000

    .line 10040
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 10043
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dataFile:Ljava/io/File;

    if-eqz v2, :cond_4

    .line 10046
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    const-string v3, "Data File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dataFile:Ljava/io/File;

    .line 10047
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10049
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    .line 10050
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/lit8 v2, v0, 0x64

    sub-int/2addr v1, v2

    mul-int/lit8 v2, v4, 0x64

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0xe

    if-lez v1, :cond_3

    .line 10058
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dataFile:Ljava/io/File;

    const-string v5, "\n\n[[TRUNCATED]]\n"

    invoke-static {v3, v1, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 10061
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dataFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10066
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    const-string v2, "End Data File\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10069
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$13;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v1, :cond_5

    iget-object v1, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 10070
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-gtz v0, :cond_6

    if-lez v4, :cond_8

    .line 10075
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v0, :cond_7

    .line 10077
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/ActivityManagerService;->LOGCAT_TIMEOUT_SEC:I

    const-string/jumbo v3, "main"

    const-string v5, "crash"

    .line 10078
    const-string v6, "events"

    const-string/jumbo v7, "system"

    invoke-static {v6, v7, v3, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 10077
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$smfetchLogcatBuffers(Ljava/lang/StringBuilder;IILjava/util/List;)V

    :cond_7
    if-lez v4, :cond_8

    .line 10081
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/ActivityManagerService;->LOGCAT_TIMEOUT_SEC:I

    div-int/lit8 v1, v1, 0x2

    const-string/jumbo v2, "kernel"

    .line 10082
    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 10081
    invoke-static {v0, v4, v1, v2}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$smfetchLogcatBuffers(Ljava/lang/StringBuilder;IILjava/util/List;)V

    .line 10086
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dropboxTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 10088
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAmsExt:Lcom/mediatek/server/am/AmsExt;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$13;->val$dropboxTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$13;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10089
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$13;->val$process:Lcom/android/server/am/ProcessRecord;

    if-nez p0, :cond_9

    sget p0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    goto :goto_3

    :cond_9
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 10088
    :goto_3
    invoke-virtual {v0, v1, v2, p0}, Lcom/mediatek/server/am/AmsExt;->onAddErrorToDropBox(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
