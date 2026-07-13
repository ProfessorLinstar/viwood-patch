.class public abstract Lcom/android/server/appop/DiscreteOpsMigrationHelper;
.super Ljava/lang/Object;
.source "DiscreteOpsMigrationHelper.java"


# direct methods
.method public static getXmlDiscreteOps(Ljava/util/List;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    .locals 15

    .line 62
    new-instance v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;-><init>(I)V

    .line 64
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    move-object v2, v1

    .line 69
    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getOpCode()I

    move-result v1

    move-object v3, v2

    invoke-virtual {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getUid()I

    move-result v2

    move-object v4, v3

    .line 70
    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual {v5}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    .line 71
    invoke-virtual {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    move-object v7, v6

    invoke-virtual {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getOpFlags()I

    move-result v6

    move-object v8, v7

    .line 72
    invoke-virtual {v8}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getUidState()I

    move-result v7

    move-object v10, v8

    .line 73
    invoke-virtual {v10}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAccessTime()J

    move-result-wide v8

    move-object v12, v10

    invoke-virtual {v12}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getDuration()J

    move-result-wide v10

    move-object v13, v12

    .line 74
    invoke-virtual {v13}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAttributionFlags()I

    move-result v12

    invoke-virtual {v13}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getChainId()J

    move-result-wide v13

    long-to-int v13, v13

    .line 69
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJII)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static migrateDiscreteOpsToXml(Lcom/android/server/appop/DiscreteOpsSqlRegistry;Lcom/android/server/appop/DiscreteOpsXmlRegistry;)V
    .locals 5

    .line 42
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->getAllDiscreteOps()Ljava/util/List;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 47
    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getOpCode()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getOpFlags()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/appop/DiscreteOpsRegistry;->isDiscreteOp(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_1
    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsMigrationHelper;->getXmlDiscreteOps(Ljava/util/List;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->migrateSqliteData(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->deleteDatabase()V

    return-void
.end method
