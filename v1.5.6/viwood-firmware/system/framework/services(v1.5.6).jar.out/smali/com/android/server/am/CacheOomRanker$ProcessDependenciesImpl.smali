.class public Lcom/android/server/am/CacheOomRanker$ProcessDependenciesImpl;
.super Ljava/lang/Object;
.source "CacheOomRanker.java"

# interfaces
.implements Lcom/android/server/am/CacheOomRanker$ProcessDependencies;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/CacheOomRanker-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker$ProcessDependenciesImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getRss(I)[J
    .locals 0

    .line 497
    invoke-static {p1}, Landroid/os/Process;->getRss(I)[J

    move-result-object p0

    return-object p0
.end method
