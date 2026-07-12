.class public abstract Lcom/android/server/devicepolicy/ResolutionMechanism;
.super Ljava/lang/Object;
.source "ResolutionMechanism.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getParcelableResolutionMechanism()Landroid/app/admin/ResolutionMechanism;
.end method

.method public abstract resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;
.end method
