.class public final Lcom/android/server/pm/ApexSystemServiceInfo;
.super Ljava/lang/Object;
.source "ApexSystemServiceInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final mInitOrder:I

.field public final mJarPath:Ljava/lang/String;

.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/pm/ApexSystemServiceInfo;->mName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/android/server/pm/ApexSystemServiceInfo;->mJarPath:Ljava/lang/String;

    .line 35
    iput p3, p0, Lcom/android/server/pm/ApexSystemServiceInfo;->mInitOrder:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/pm/ApexSystemServiceInfo;)I
    .locals 2

    .line 52
    iget v0, p0, Lcom/android/server/pm/ApexSystemServiceInfo;->mInitOrder:I

    iget v1, p1, Lcom/android/server/pm/ApexSystemServiceInfo;->mInitOrder:I

    if-ne v0, v1, :cond_0

    .line 53
    iget-object p0, p0, Lcom/android/server/pm/ApexSystemServiceInfo;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/pm/ApexSystemServiceInfo;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 56
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lcom/android/server/pm/ApexSystemServiceInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexSystemServiceInfo;->compareTo(Lcom/android/server/pm/ApexSystemServiceInfo;)I

    move-result p0

    return p0
.end method

.method public getJarPath()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/server/pm/ApexSystemServiceInfo;->mJarPath:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/server/pm/ApexSystemServiceInfo;->mName:Ljava/lang/String;

    return-object p0
.end method
