.class public abstract Lcom/android/server/backup/SetUtils;
.super Ljava/lang/Object;
.source "SetUtils.java"


# direct methods
.method public static union(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 34
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
