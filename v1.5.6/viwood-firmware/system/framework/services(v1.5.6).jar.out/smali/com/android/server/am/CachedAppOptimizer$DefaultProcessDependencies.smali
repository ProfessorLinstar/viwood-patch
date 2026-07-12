.class public final Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"

# interfaces
.implements Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;


# static fields
.field public static volatile mPidCompacting:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;-><init>()V

    return-void
.end method


# virtual methods
.method public getRss(I)[J
    .locals 0

    .line 2204
    invoke-static {p1}, Landroid/os/Process;->getRss(I)[J

    move-result-object p0

    return-object p0
.end method

.method public performCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;I)V
    .locals 0

    .line 2210
    sput p2, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;->mPidCompacting:I

    .line 2211
    sget-object p0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x3

    .line 2212
    invoke-static {p2, p0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smcompactProcess(II)V

    goto :goto_0

    .line 2213
    :cond_0
    sget-object p0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    .line 2214
    invoke-static {p2, p0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smcompactProcess(II)V

    goto :goto_0

    .line 2215
    :cond_1
    sget-object p0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->ANON:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne p1, p0, :cond_2

    const/4 p0, 0x2

    .line 2216
    invoke-static {p2, p0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smcompactProcess(II)V

    :cond_2
    :goto_0
    const/4 p0, -0x1

    .line 2218
    sput p0, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;->mPidCompacting:I

    return-void
.end method
