.class public Lcom/android/server/pm/SettingsXml$ReadSectionImpl;
.super Ljava/lang/Object;
.source "SettingsXml.java"

# interfaces
.implements Lcom/android/server/pm/SettingsXml$ChildSection;


# instance fields
.field public final mDepthStack:Ljava/util/Stack;

.field public final mInput:Ljava/io/InputStream;

.field public final mParser:Lcom/android/modules/utils/TypedXmlPullParser;


# direct methods
.method public constructor <init>(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mInput:Ljava/io/InputStream;

    .line 180
    iput-object p1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Lcom/android/modules/utils/TypedXmlPullParser;

    .line 181
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToFirstTag()V

    return-void
.end method


# virtual methods
.method public children()Lcom/android/server/pm/SettingsXml$ChildSection;
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public close()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "SettingsXml"

    const-string v2, "Children depth stack was not empty, data may have been lost"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mInput:Ljava/io/InputStream;

    if-eqz p0, :cond_1

    .line 312
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 231
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 236
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Lcom/android/modules/utils/TypedXmlPullParser;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    .line 241
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 246
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Lcom/android/modules/utils/TypedXmlPullParser;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 216
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Lcom/android/modules/utils/TypedXmlPullParser;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final moveToFirstTag()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 191
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public moveToNext()Z
    .locals 1

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public moveToNext(Ljava/lang/String;)Z
    .locals 0

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final moveToNextInternal(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, v0

    :goto_0
    if-nez v2, :cond_3

    .line 280
    iget-object v3, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Lcom/android/modules/utils/TypedXmlPullParser;

    .line 281
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Lcom/android/modules/utils/TypedXmlPullParser;

    .line 282
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_3

    :cond_0
    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 287
    iget-object v3, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Lcom/android/modules/utils/TypedXmlPullParser;

    .line 288
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    .line 296
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v2

    :catch_0
    return v0
.end method
