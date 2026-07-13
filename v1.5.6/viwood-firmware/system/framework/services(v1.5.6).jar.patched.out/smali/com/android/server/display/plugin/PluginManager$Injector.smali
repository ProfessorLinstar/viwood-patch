.class public Lcom/android/server/display/plugin/PluginManager$Injector;
.super Ljava/lang/Object;
.source "PluginManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnabledPluginTypes(Lcom/android/server/display/feature/DisplayManagerFlags;)Ljava/util/Set;
    .locals 0

    .line 117
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 118
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isHdrOverrideEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    sget-object p1, Lcom/android/server/display/plugin/PluginType;->HDR_BOOST_OVERRIDE:Lcom/android/server/display/plugin/PluginType;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public getPluginStorage(Ljava/util/Set;)Lcom/android/server/display/plugin/PluginStorage;
    .locals 0

    .line 125
    new-instance p0, Lcom/android/server/display/plugin/PluginStorage;

    invoke-direct {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;-><init>(Ljava/util/Set;)V

    return-object p0
.end method

.method public loadPlugins(Landroid/content/Context;Lcom/android/server/display/plugin/PluginStorage;Ljava/util/Set;)Ljava/util/List;
    .locals 4

    const v0, 0x10402b3

    .line 131
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loading plugins from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 139
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v1, 0x0

    .line 138
    invoke-static {v0, p0, v1}, Lcom/android/internal/os/SystemServerClassLoaderFactory;->getOrCreateClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ldalvik/system/PathClassLoader;

    move-result-object p0

    .line 141
    const-string v3, "com.android.server.display.plugin.PluginsProviderImpl"

    invoke-virtual {p0, v3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class v3, Lcom/android/server/display/plugin/PluginsProvider;

    .line 142
    invoke-virtual {p0, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 143
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/plugin/PluginsProvider;

    .line 144
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/display/plugin/PluginsProvider;->getPlugins(Landroid/content/Context;Lcom/android/server/display/plugin/PluginStorage;Ljava/util/Set;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 150
    :goto_0
    const-string p1, "Class instantiation failed"

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 146
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "loading failed: com.android.server.display.plugin.PluginsProviderImpl is not found in"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    :goto_2
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method
