.class public final Lcom/android/server/wm/ActivityCallerState$CallerInfo;
.super Ljava/lang/Object;
.source "ActivityCallerState.java"


# instance fields
.field public final mInaccessibleContentUris:Landroid/util/ArraySet;

.field public final mIsShareIdentityEnabled:Z

.field public final mPackageName:Ljava/lang/String;

.field public final mReadableContentUris:Landroid/util/ArraySet;

.field public final mUid:I

.field public final mWritableContentUris:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mReadableContentUris:Landroid/util/ArraySet;

    .line 254
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mWritableContentUris:Landroid/util/ArraySet;

    .line 255
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mInaccessibleContentUris:Landroid/util/ArraySet;

    .line 258
    iput p1, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mUid:I

    .line 259
    iput-object p2, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mPackageName:Ljava/lang/String;

    .line 260
    iput-boolean p3, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mIsShareIdentityEnabled:Z

    return-void
.end method

.method public static restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/wm/ActivityCallerState$CallerInfo;
    .locals 5

    const/4 v0, 0x0

    .line 286
    const-string v1, "caller_uid"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 287
    const-string v3, "caller_package"

    invoke-interface {p0, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 288
    const-string v4, "caller_is_share_enabled"

    invoke-interface {p0, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 291
    new-instance v2, Lcom/android/server/wm/ActivityCallerState$CallerInfo;

    invoke-direct {v2, v1, v3, v0}, Lcom/android/server/wm/ActivityCallerState$CallerInfo;-><init>(ILjava/lang/String;Z)V

    .line 292
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 294
    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 295
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-lt v3, v0, :cond_5

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 297
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 298
    const-string v3, "readable_content_uri"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    iget-object v1, v2, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mReadableContentUris:Landroid/util/ArraySet;

    invoke-static {p0}, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->restoreGrantUriFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/uri/GrantUri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    :cond_2
    const-string v3, "writable_content_uri"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 301
    iget-object v1, v2, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mWritableContentUris:Landroid/util/ArraySet;

    invoke-static {p0}, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->restoreGrantUriFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/uri/GrantUri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    :cond_3
    const-string v3, "inaccessible_content_uri"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 303
    iget-object v1, v2, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mInaccessibleContentUris:Landroid/util/ArraySet;

    invoke-static {p0}, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->restoreGrantUriFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/uri/GrantUri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreActivity: unexpected name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_5
    return-object v2
.end method

.method public static restoreGrantUriFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/uri/GrantUri;
    .locals 5

    const/4 v0, 0x0

    .line 324
    const-string v1, "source_user_id"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 325
    const-string v3, "uri"

    invoke-interface {p0, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 326
    const-string v4, "prefix"

    invoke-interface {p0, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    .line 327
    new-instance v0, Lcom/android/server/uri/GrantUri;

    if-eqz p0, :cond_0

    const/16 v2, 0x80

    .line 328
    :cond_0
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    return-object v0
.end method


# virtual methods
.method public final saveGrantUriToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/uri/GrantUri;Ljava/lang/String;)V
    .locals 2

    const/4 p0, 0x0

    .line 315
    invoke-interface {p1, p0, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 316
    iget v0, p2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const-string v1, "source_user_id"

    invoke-interface {p1, p0, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 317
    iget-object v0, p2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uri"

    invoke-interface {p1, p0, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 318
    const-string v0, "prefix"

    iget-boolean p2, p2, Lcom/android/server/uri/GrantUri;->prefix:Z

    invoke-interface {p1, p0, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 319
    invoke-interface {p1, p0, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 3

    .line 265
    const-string v0, "caller_uid"

    iget v1, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mUid:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 266
    iget-object v0, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 267
    const-string v1, "caller_package"

    invoke-interface {p1, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 269
    :cond_0
    const-string v0, "caller_is_share_enabled"

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mIsShareIdentityEnabled:Z

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mReadableContentUris:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 271
    iget-object v1, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mReadableContentUris:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/GrantUri;

    const-string v2, "readable_content_uri"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->saveGrantUriToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/uri/GrantUri;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mWritableContentUris:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 275
    iget-object v1, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mWritableContentUris:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/GrantUri;

    const-string v2, "writable_content_uri"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->saveGrantUriToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/uri/GrantUri;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mInaccessibleContentUris:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_3

    .line 279
    iget-object v1, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mInaccessibleContentUris:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/GrantUri;

    const-string v2, "inaccessible_content_uri"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->saveGrantUriToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/uri/GrantUri;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method
