.class public final Lcom/android/server/policy/GlobalKeyManager;
.super Ljava/lang/Object;
.source "GlobalKeyManager.java"


# instance fields
.field public mBeganFromNonInteractive:Z

.field public final mKeyMapping:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/policy/GlobalKeyManager;->loadGlobalKeys(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "mKeyMapping.size=0"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 170
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mKeyMapping={"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 172
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    const-string v2, "="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    invoke-static {v2}, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->-$$Nest$fgetmComponentName(Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    const-string v2, ",dispatchWhenNonInteractive="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    invoke-static {v2}, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->-$$Nest$fgetmDispatchWhenNonInteractive(Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p0, "}"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    if-eqz p2, :cond_1

    .line 78
    new-instance v0, Lcom/android/server/policy/GlobalKeyIntent;

    invoke-static {p2}, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->-$$Nest$fgetmComponentName(Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;)Landroid/content/ComponentName;

    move-result-object p2

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    invoke-direct {v0, p2, p3, v2}, Lcom/android/server/policy/GlobalKeyIntent;-><init>(Landroid/content/ComponentName;Landroid/view/KeyEvent;Z)V

    .line 79
    invoke-virtual {v0}, Lcom/android/server/policy/GlobalKeyIntent;->getIntent()Landroid/content/Intent;

    move-result-object p2

    .line 80
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 83
    iput-boolean v1, p0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    :cond_0
    return p2

    :cond_1
    return v1
.end method

.method public final loadGlobalKeys(Landroid/content/Context;)V
    .locals 7

    .line 124
    const-string v0, "GlobalKeyManager"

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x1170009

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :try_start_1
    const-string v1, "global_keys"

    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v1, "version"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v3, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_5

    .line 130
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 131
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 135
    :cond_1
    const-string v2, "key"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "keyCode"

    invoke-interface {p1, v3, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    const-string v2, "component"

    invoke-interface {p1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    const-string v4, "dispatchWhenNonInteractive"

    .line 139
    invoke-interface {p1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_4

    if-nez v2, :cond_2

    goto :goto_1

    .line 144
    :cond_2
    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 146
    iget-object v1, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    invoke-direct {v6, p0, v2, v4}, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;-><init>(Lcom/android/server/policy/GlobalKeyManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 149
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Global keys entry does not map to a valid key code: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse global keys entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 155
    :cond_5
    :goto_2
    :try_start_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception p0

    goto :goto_7

    :goto_3
    if-eqz p1, :cond_6

    .line 124
    :try_start_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw p0
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 160
    :goto_5
    const-string p1, "I/O exception reading global keys file"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 158
    :goto_6
    const-string p1, "XML parser exception reading global keys file"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 156
    :goto_7
    const-string p1, "global keys file not found"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    return-void
.end method

.method public setBeganFromNonInteractive()V
    .locals 1

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    return-void
.end method

.method public shouldDispatchFromNonInteractive(I)Z
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 107
    :cond_0
    invoke-static {p0}, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->-$$Nest$fgetmDispatchWhenNonInteractive(Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;)Z

    move-result p0

    return p0
.end method

.method public shouldHandleGlobalKey(I)Z
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
