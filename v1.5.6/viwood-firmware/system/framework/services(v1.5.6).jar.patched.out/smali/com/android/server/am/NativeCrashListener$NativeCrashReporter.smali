.class public Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# instance fields
.field public mApp:Lcom/android/server/am/ProcessRecord;

.field public mCrashReport:Ljava/lang/String;

.field public mGwpAsanRecoverableCrash:Z

.field public mSignal:I

.field public final synthetic this$0:Lcom/android/server/am/NativeCrashListener;


# direct methods
.method public constructor <init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;IZLjava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->this$0:Lcom/android/server/am/NativeCrashListener;

    .line 72
    const-string p1, "NativeCrashReport"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 73
    iput-object p2, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 74
    iput p3, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mSignal:I

    .line 75
    iput-boolean p4, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mGwpAsanRecoverableCrash:Z

    .line 76
    iput-object p5, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mCrashReport:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 82
    const-string/jumbo v0, "unknown"

    :try_start_0
    new-instance v1, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>()V

    .line 83
    const-string v2, "Native crash"

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 84
    iget v2, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mSignal:I

    invoke-static {v2}, Landroid/system/Os;->strsignal(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 85
    iput-object v0, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    .line 86
    iput-object v0, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    .line 87
    iput-object v0, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mCrashReport:Ljava/lang/String;

    iput-object v0, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->this$0:Lcom/android/server/am/NativeCrashListener;

    iget-object v0, v0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 92
    iget-boolean v2, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mGwpAsanRecoverableCrash:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "native_recoverable_crash"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "native_crash"

    :goto_0
    iget-object p0, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v2, p0, v3, v1}, Lcom/android/server/am/ActivityManagerService;->handleApplicationCrashInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 96
    const-string v0, "NativeCrashListener"

    const-string v1, "Unable to report native crash"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
