.class public final Lcom/android/server/cpu/CpuInfoReader$StaticPolicyInfo;
.super Ljava/lang/Object;
.source "CpuInfoReader.java"


# instance fields
.field public final relatedCpuCores:Landroid/util/IntArray;


# direct methods
.method public constructor <init>(Landroid/util/IntArray;)V
    .locals 0

    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    iput-object p1, p0, Lcom/android/server/cpu/CpuInfoReader$StaticPolicyInfo;->relatedCpuCores:Landroid/util/IntArray;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StaticPolicyInfo{relatedCpuCores = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/cpu/CpuInfoReader$StaticPolicyInfo;->relatedCpuCores:Landroid/util/IntArray;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
