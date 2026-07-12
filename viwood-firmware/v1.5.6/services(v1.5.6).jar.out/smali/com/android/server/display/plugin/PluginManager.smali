.class public Lcom/android/server/display/plugin/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# instance fields
.field public final mPluginStorage:Lcom/android/server/display/plugin/PluginStorage;

.field public final mPlugins:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 1

    .line 52
    new-instance v0, Lcom/android/server/display/plugin/PluginManager$Injector;

    invoke-direct {v0}, Lcom/android/server/display/plugin/PluginManager$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/plugin/PluginManager;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/plugin/PluginManager$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/plugin/PluginManager$Injector;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p3, p2}, Lcom/android/server/display/plugin/PluginManager$Injector;->getEnabledPluginTypes(Lcom/android/server/display/feature/DisplayManagerFlags;)Ljava/util/Set;

    move-result-object v0

    .line 58
    invoke-virtual {p3, v0}, Lcom/android/server/display/plugin/PluginManager$Injector;->getPluginStorage(Ljava/util/Set;)Lcom/android/server/display/plugin/PluginStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/plugin/PluginManager;->mPluginStorage:Lcom/android/server/display/plugin/PluginStorage;

    .line 59
    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isPluginManagerEnabled()Z

    move-result p2

    const-string v2, "PluginManager"

    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p3, p1, v1, v0}, Lcom/android/server/display/plugin/PluginManager$Injector;->loadPlugins(Landroid/content/Context;Lcom/android/server/display/plugin/PluginStorage;Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/plugin/PluginManager;->mPlugins:Ljava/util/List;

    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "loaded Plugins:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 64
    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/display/plugin/PluginManager;->mPlugins:Ljava/util/List;

    .line 65
    const-string p0, "PluginManager disabled"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 96
    const-string v0, "PluginManager:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginManager;->mPluginStorage:Lcom/android/server/display/plugin/PluginStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/display/plugin/PluginStorage;->dump(Ljava/io/PrintWriter;)V

    .line 98
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginManager;->mPlugins:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/plugin/Plugin;

    .line 99
    invoke-interface {v0, p1}, Lcom/android/server/display/plugin/Plugin;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .line 73
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginManager;->mPlugins:Ljava/util/List;

    new-instance v0, Lcom/android/server/display/plugin/PluginManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/plugin/PluginManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
