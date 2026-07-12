.class public abstract Lcom/android/server/appfunctions/AppFunctionDumpHelper;
.super Ljava/lang/Object;
.source "AppFunctionDumpHelper.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static buildAppFunctionMetadataSearchSpec()Landroid/app/appsearch/SearchSpec;
    .locals 4

    .line 104
    new-instance v0, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    const-string v1, "android"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v0, v2}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterPackageNames([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    const-string v2, "AppFunctionRuntimeMetadata"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {v0, v2}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object v0

    .line 109
    new-instance v2, Landroid/app/appsearch/JoinSpec$Builder;

    const-string v3, "appFunctionStaticMetadataQualifiedId"

    invoke-direct {v2, v3}, Landroid/app/appsearch/JoinSpec$Builder;-><init>(Ljava/lang/String;)V

    const-string v3, ""

    .line 111
    invoke-virtual {v2, v3, v0}, Landroid/app/appsearch/JoinSpec$Builder;->setNestedSearch(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/JoinSpec$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/app/appsearch/JoinSpec$Builder;->build()Landroid/app/appsearch/JoinSpec;

    move-result-object v0

    .line 114
    new-instance v2, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v2}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v2, v1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterPackageNames([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v1

    const-string v2, "AppFunctionStaticMetadata"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v1, v2}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v0}, Landroid/app/appsearch/SearchSpec$Builder;->setJoinSpec(Landroid/app/appsearch/JoinSpec;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object v0

    return-object v0
.end method

.method public static dumpAppFunctionMetadata(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/SearchResult;)V
    .locals 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppFunctionMetadata for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v1

    const-string v2, "functionId"

    .line 127
    invoke-virtual {v1, v2}, Landroid/app/appsearch/GenericDocument;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 130
    const-string v0, "Static Metadata:"

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 132
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->writeGenericDocumentProperties(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/GenericDocument;)V

    .line 133
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 135
    const-string v0, "Runtime Metadata:"

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 137
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getJoinedResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getJoinedResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/SearchResult;

    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object p1

    .line 138
    invoke-static {p0, p1}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->writeGenericDocumentProperties(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/GenericDocument;)V

    goto :goto_0

    .line 141
    :cond_0
    const-string p1, "No runtime metadata found."

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 143
    :goto_0
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 145
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public static dumpAppFunctionsState(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 4

    .line 56
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 58
    const-string p0, "Couldn\'t retrieve UserManager."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 62
    :cond_0
    new-instance v1, Landroid/util/IndentingPrintWriter;

    invoke-direct {v1, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 64
    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object p1

    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppFunction state for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 70
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 69
    invoke-static {v0, v1}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->dumpAppFunctionsStateForUser(Landroid/content/Context;Landroid/util/IndentingPrintWriter;)V

    .line 71
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static dumpAppFunctionsStateForUser(Landroid/content/Context;Landroid/util/IndentingPrintWriter;)V
    .locals 4

    .line 77
    const-class v0, Landroid/app/appsearch/AppSearchManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/appsearch/AppSearchManager;

    if-nez p0, :cond_0

    .line 79
    const-string p0, "Couldn\'t retrieve AppSearchManager."

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 83
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/server/appfunctions/FutureGlobalSearchSession;

    new-instance v1, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :try_start_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 87
    const-string p0, ""

    .line 88
    invoke-static {}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->buildAppFunctionMetadataSearchSpec()Landroid/app/appsearch/SearchSpec;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appfunctions/FutureSearchResults;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    :cond_1
    :try_start_2
    invoke-interface {p0}, Lcom/android/server/appfunctions/FutureSearchResults;->getNextPage()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 92
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/appsearch/SearchResult;

    .line 93
    invoke-static {p1, v3}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->dumpAppFunctionMetadata(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/SearchResult;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 95
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 96
    :try_start_3
    invoke-interface {p0}, Lcom/android/server/appfunctions/FutureSearchResults;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 98
    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    if-eqz p0, :cond_3

    .line 87
    :try_start_5
    invoke-interface {p0}, Lcom/android/server/appfunctions/FutureSearchResults;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 83
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 99
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to dump AppFunction state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static writeGenericDocumentProperties(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/GenericDocument;)V
    .locals 8

    .line 150
    invoke-virtual {p1}, Landroid/app/appsearch/GenericDocument;->getPropertyNames()Ljava/util/Set;

    move-result-object v0

    .line 151
    const-string/jumbo v1, "{"

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 153
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    invoke-virtual {p1, v1}, Landroid/app/appsearch/GenericDocument;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\": ["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 157
    instance-of v1, v2, [Landroid/app/appsearch/GenericDocument;

    const-string v3, ", "

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 158
    check-cast v2, [Landroid/app/appsearch/GenericDocument;

    .line 159
    :goto_1
    array-length v1, v2

    if-ge v5, v1, :cond_6

    .line 160
    aget-object v1, v2, v5

    .line 161
    invoke-static {p0, v1}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->writeGenericDocumentProperties(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/GenericDocument;)V

    .line 162
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    if-eq v5, v1, :cond_0

    .line 163
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 168
    :cond_1
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_2
    if-ge v5, v1, :cond_6

    .line 170
    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 171
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 173
    :cond_2
    instance-of v7, v6, [B

    if-eqz v7, :cond_3

    .line 174
    check-cast v6, [B

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    if-eqz v6, :cond_4

    .line 176
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    :goto_3
    add-int/lit8 v6, v1, -0x1

    if-eq v5, v6, :cond_5

    .line 179
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 183
    :cond_6
    const-string v1, "]"

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :cond_7
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 186
    const-string/jumbo p1, "}"

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
