.class public Lcom/android/server/compat/overrides/ChangeOverrides;
.super Ljava/lang/Object;
.source "ChangeOverrides.java"


# instance fields
.field public changeId:Ljava/lang/Long;

.field public deferred:Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;

.field public raw:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

.field public validated:Lcom/android/server/compat/overrides/ChangeOverrides$Validated;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/overrides/ChangeOverrides;
    .locals 4

    .line 205
    new-instance v0, Lcom/android/server/compat/overrides/ChangeOverrides;

    invoke-direct {v0}, Lcom/android/server/compat/overrides/ChangeOverrides;-><init>()V

    const/4 v1, 0x0

    .line 207
    const-string v2, "changeId"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 209
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 210
    invoke-virtual {v0, v1, v2}, Lcom/android/server/compat/overrides/ChangeOverrides;->setChangeId(J)V

    .line 212
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 214
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_5

    if-eq v1, v3, :cond_5

    .line 216
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 217
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 218
    const-string/jumbo v2, "validated"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    invoke-static {p0}, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/overrides/ChangeOverrides$Validated;

    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Lcom/android/server/compat/overrides/ChangeOverrides;->setValidated(Lcom/android/server/compat/overrides/ChangeOverrides$Validated;)V

    goto :goto_0

    .line 221
    :cond_2
    const-string v2, "deferred"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 222
    invoke-static {p0}, Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;

    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Lcom/android/server/compat/overrides/ChangeOverrides;->setDeferred(Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;)V

    goto :goto_0

    .line 224
    :cond_3
    const-string/jumbo v2, "raw"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 225
    invoke-static {p0}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Lcom/android/server/compat/overrides/ChangeOverrides;->setRaw(Lcom/android/server/compat/overrides/ChangeOverrides$Raw;)V

    goto :goto_0

    .line 228
    :cond_4
    invoke-static {p0}, Lcom/android/server/compat/overrides/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_5
    if-ne v1, v3, :cond_6

    return-object v0

    .line 232
    :cond_6
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "ChangeOverrides is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getChangeId()J
    .locals 2

    .line 187
    iget-object p0, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->changeId:Ljava/lang/Long;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 190
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeferred()Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->deferred:Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;

    return-object p0
.end method

.method public getRaw()Lcom/android/server/compat/overrides/ChangeOverrides$Raw;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->raw:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    return-object p0
.end method

.method public getValidated()Lcom/android/server/compat/overrides/ChangeOverrides$Validated;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->validated:Lcom/android/server/compat/overrides/ChangeOverrides$Validated;

    return-object p0
.end method

.method public hasChangeId()Z
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->changeId:Ljava/lang/Long;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public hasDeferred()Z
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->deferred:Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public hasRaw()Z
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->raw:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public hasValidated()Z
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->validated:Lcom/android/server/compat/overrides/ChangeOverrides$Validated;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setChangeId(J)V
    .locals 0

    .line 201
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->changeId:Ljava/lang/Long;

    return-void
.end method

.method public setDeferred(Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->deferred:Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;

    return-void
.end method

.method public setRaw(Lcom/android/server/compat/overrides/ChangeOverrides$Raw;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->raw:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    return-void
.end method

.method public setValidated(Lcom/android/server/compat/overrides/ChangeOverrides$Validated;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->validated:Lcom/android/server/compat/overrides/ChangeOverrides$Validated;

    return-void
.end method

.method public write(Lcom/android/server/compat/overrides/XmlWriter;Ljava/lang/String;)V
    .locals 3

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/ChangeOverrides;->hasChangeId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const-string v0, " changeId=\""

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/ChangeOverrides;->getChangeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 242
    const-string v0, "\""

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 244
    :cond_0
    const-string v0, ">\n"

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/XmlWriter;->increaseIndent()V

    .line 246
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/ChangeOverrides;->hasValidated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/ChangeOverrides;->getValidated()Lcom/android/server/compat/overrides/ChangeOverrides$Validated;

    move-result-object v1

    const-string/jumbo v2, "validated"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;->write(Lcom/android/server/compat/overrides/XmlWriter;Ljava/lang/String;)V

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/ChangeOverrides;->hasDeferred()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/ChangeOverrides;->getDeferred()Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;

    move-result-object v1

    const-string v2, "deferred"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;->write(Lcom/android/server/compat/overrides/XmlWriter;Ljava/lang/String;)V

    .line 252
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/ChangeOverrides;->hasRaw()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 253
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/ChangeOverrides;->getRaw()Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    move-result-object p0

    const-string/jumbo v1, "raw"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->write(Lcom/android/server/compat/overrides/XmlWriter;Ljava/lang/String;)V

    .line 255
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/XmlWriter;->decreaseIndent()V

    .line 256
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    return-void
.end method
