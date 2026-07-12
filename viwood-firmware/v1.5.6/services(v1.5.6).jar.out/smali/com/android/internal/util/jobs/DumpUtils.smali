.class public final Lcom/android/internal/util/jobs/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# static fields
.field public static final CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DumpUtils"


# direct methods
.method public static synthetic $r8$lambda$7L2IuHmi6ElsEnVZijGH47KxIzk(ILjava/lang/String;Landroid/content/ComponentName$WithComponentName;)Z
    .locals 2

    .line 318
    invoke-interface {p2}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    .line 319
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    if-eq p2, p0, :cond_1

    .line 320
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$FG505HlyvajkfrO9xmitenM2Nv8(Landroid/content/ComponentName$WithComponentName;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$WK57pgle_yxeN7VzFLE0xvhrYrs(Landroid/content/ComponentName;Landroid/content/ComponentName$WithComponentName;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 311
    invoke-interface {p1}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$xV6YgEaWJX4rlq6RkXJi5BssYRs(Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .locals 0

    .line 358
    const-string p2, "%s%s"

    filled-new-array {p1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 48
    new-array v0, v0, [Landroid/content/ComponentName;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/util/jobs/DumpUtils;->CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 1

    .line 178
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->checkUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 1

    .line 99
    const-string v0, "android.permission.DUMP"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission Denial: can\'t dump "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " due to missing android.permission.DUMP permission"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 101
    invoke-static {p2, p0}, Lcom/android/internal/util/jobs/DumpUtils;->logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static checkUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 11

    .line 122
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_3

    const/16 v2, 0x42b

    if-eq v0, v2, :cond_3

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_3

    .line 132
    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const-string v3, ", uid="

    const-string v4, " from from pid="

    const-string v5, "Permission Denial: can\'t dump "

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    .line 134
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " due to missing android.permission.PACKAGE_USAGE_STATS permission"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 134
    invoke-static {p2, p0}, Lcom/android/internal/util/jobs/DumpUtils;->logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v6

    .line 143
    :cond_0
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 146
    array-length v7, p0

    move v8, v6

    :goto_0
    if-ge v8, v7, :cond_2

    aget-object v9, p0, v8

    const/16 v10, 0x2b

    .line 147
    invoke-virtual {v2, v10, v0, v9}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_1

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 160
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " due to android:get_usage_stats app-op not allowed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 160
    invoke-static {p2, p0}, Lcom/android/internal/util/jobs/DumpUtils;->logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v6

    :cond_3
    return v1
.end method

.method public static dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/jobs/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 2

    .line 66
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 67
    new-instance v1, Lcom/android/internal/util/jobs/DumpUtils$1;

    invoke-direct {v1, v0, p1, p3}, Lcom/android/internal/util/jobs/DumpUtils$1;-><init>(Ljava/io/StringWriter;Lcom/android/internal/util/jobs/DumpUtils$Dump;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p4, p5}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    .line 77
    :cond_0
    const-string p0, "... timed out"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 349
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/jobs/DumpUtils;->dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/jobs/DumpUtils$KeyDumper;Lcom/android/internal/util/jobs/DumpUtils$ValueDumper;)V

    return-void
.end method

.method public static dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/jobs/DumpUtils$KeyDumper;Lcom/android/internal/util/jobs/DumpUtils$ValueDumper;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/jobs/DumpUtils$KeyDumper;",
            "Lcom/android/internal/util/jobs/DumpUtils$ValueDumper<",
            "TT;>;)V"
        }
    .end annotation

    .line 367
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 369
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    const-string p1, "No "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    const-string/jumbo p1, "s"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 375
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v1, 0x20

    .line 377
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 378
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 379
    const-string p3, "(s):"

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, v0, :cond_4

    .line 383
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 384
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz p4, :cond_1

    .line 386
    invoke-interface {p4, p3, v1}, Lcom/android/internal/util/jobs/DumpUtils$KeyDumper;->dump(II)V

    goto :goto_1

    .line 388
    :cond_1
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 390
    const-string v3, ": "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 392
    const-string v1, "->"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_2

    .line 395
    const-string v1, "(null)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-eqz p5, :cond_3

    .line 397
    invoke-interface {p5, v2}, Lcom/android/internal/util/jobs/DumpUtils$ValueDumper;->dump(Ljava/lang/Object;)V

    goto :goto_2

    .line 399
    :cond_3
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 401
    :goto_2
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static dumpSparseArrayValues(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 357
    new-instance v4, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/jobs/DumpUtils;->dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/jobs/DumpUtils$KeyDumper;Lcom/android/internal/util/jobs/DumpUtils$ValueDumper;)V

    return-void
.end method

.method public static filterRecord(Ljava/lang/String;)Ljava/util/function/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRec::",
            "Landroid/content/ComponentName$WithComponentName;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "TTRec;>;"
        }
    .end annotation

    .line 278
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda1;-><init>()V

    return-object p0

    .line 283
    :cond_0
    const-string v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;-><init>()V

    return-object p0

    .line 288
    :cond_1
    const-string v0, "all-platform"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda3;-><init>()V

    return-object p0

    .line 293
    :cond_2
    const-string v0, "all-non-platform"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda4;-><init>()V

    return-object p0

    .line 298
    :cond_3
    const-string v0, "all-platform-critical"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda5;

    invoke-direct {p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda5;-><init>()V

    return-object p0

    .line 303
    :cond_4
    const-string v0, "all-platform-non-critical"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 304
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda6;

    invoke-direct {p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda6;-><init>()V

    return-object p0

    .line 308
    :cond_5
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 311
    new-instance p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda7;

    invoke-direct {p0, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda7;-><init>(Landroid/content/ComponentName;)V

    return-object p0

    :cond_6
    const/16 v0, 0x10

    const/4 v1, -0x1

    .line 316
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/jobs/ParseUtils;->parseIntWithBase(Ljava/lang/String;II)I

    move-result v0

    .line 317
    new-instance v1, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda8;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private static isCriticalPackage(Landroid/content/ComponentName;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 240
    :goto_0
    sget-object v2, Lcom/android/internal/util/jobs/DumpUtils;->CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 241
    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isNonPlatformPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 229
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isNonPlatformPackage(Landroid/content/ComponentName;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isNonPlatformPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isNonPlatformPackage(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 213
    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPlatformCriticalPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 255
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isCriticalPackage(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPlatformNonCriticalPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 267
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isCriticalPackage(Landroid/content/ComponentName;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPlatformPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 205
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPlatformPackage(Landroid/content/ComponentName;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 197
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPlatformPackage(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 186
    const-string v0, "android"

    .line 187
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android."

    .line 188
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android."

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
