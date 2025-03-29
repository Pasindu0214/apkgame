.class public La/b/a/o/n/d;
.super Ljava/lang/Object;
.source "GLVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/o/n/d$a;
    }
.end annotation


# instance fields
.field public a:I

.field public final b:La/b/a/o/n/d$a;


# direct methods
.method public constructor <init>(La/b/a/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p3, La/b/a/a$a;->a:La/b/a/a$a;

    if-ne p1, p3, :cond_0

    sget-object p1, La/b/a/o/n/d$a;->b:La/b/a/o/n/d$a;

    iput-object p1, p0, La/b/a/o/n/d;->b:La/b/a/o/n/d$a;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p3, La/b/a/a$a;->f:La/b/a/a$a;

    if-ne p1, p3, :cond_1

    sget-object p1, La/b/a/o/n/d$a;->b:La/b/a/o/n/d$a;

    iput-object p1, p0, La/b/a/o/n/d;->b:La/b/a/o/n/d$a;

    goto :goto_0

    .line 4
    :cond_1
    sget-object p3, La/b/a/a$a;->b:La/b/a/a$a;

    if-ne p1, p3, :cond_2

    sget-object p1, La/b/a/o/n/d$a;->a:La/b/a/o/n/d$a;

    iput-object p1, p0, La/b/a/o/n/d;->b:La/b/a/o/n/d$a;

    goto :goto_0

    .line 5
    :cond_2
    sget-object p3, La/b/a/a$a;->d:La/b/a/a$a;

    if-ne p1, p3, :cond_3

    sget-object p1, La/b/a/o/n/d$a;->a:La/b/a/o/n/d$a;

    iput-object p1, p0, La/b/a/o/n/d;->b:La/b/a/o/n/d$a;

    goto :goto_0

    .line 6
    :cond_3
    sget-object p3, La/b/a/a$a;->e:La/b/a/a$a;

    if-ne p1, p3, :cond_4

    sget-object p1, La/b/a/o/n/d$a;->c:La/b/a/o/n/d$a;

    iput-object p1, p0, La/b/a/o/n/d;->b:La/b/a/o/n/d$a;

    goto :goto_0

    .line 7
    :cond_4
    sget-object p1, La/b/a/o/n/d$a;->d:La/b/a/o/n/d$a;

    iput-object p1, p0, La/b/a/o/n/d;->b:La/b/a/o/n/d$a;

    .line 8
    :goto_0
    iget-object p1, p0, La/b/a/o/n/d;->b:La/b/a/o/n/d$a;

    sget-object p3, La/b/a/o/n/d$a;->b:La/b/a/o/n/d$a;

    if-ne p1, p3, :cond_5

    const-string p1, "OpenGL ES (\\d(\\.\\d){0,2})"

    .line 9
    invoke-virtual {p0, p1, p2}, La/b/a/o/n/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_5
    sget-object p3, La/b/a/o/n/d$a;->c:La/b/a/o/n/d$a;

    if-ne p1, p3, :cond_6

    const-string p1, "WebGL (\\d(\\.\\d){0,2})"

    .line 11
    invoke-virtual {p0, p1, p2}, La/b/a/o/n/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_6
    sget-object p3, La/b/a/o/n/d$a;->a:La/b/a/o/n/d$a;

    if-ne p1, p3, :cond_7

    const-string p1, "(\\d(\\.\\d){0,2})"

    .line 13
    invoke-virtual {p0, p1, p2}, La/b/a/o/n/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const/4 p1, -0x1

    .line 14
    iput p1, p0, La/b/a/o/n/d;->a:I

    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)I
    .locals 3

    .line 11
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 12
    :catch_0
    sget-object v0, La/b/a/e;->a:La/b/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", assuming: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LibGDX GL"

    invoke-interface {v0, v1, p1}, La/b/a/a;->error(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\."

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    aget-object v2, p1, v0

    invoke-virtual {p0, v2, v1}, La/b/a/o/n/d;->a(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, La/b/a/o/n/d;->a:I

    .line 7
    array-length v2, p1

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p2, p1, p2

    invoke-virtual {p0, p2, v0}, La/b/a/o/n/d;->a(Ljava/lang/String;I)I

    .line 8
    :goto_0
    array-length p2, p1

    const/4 v2, 0x3

    if-ge p2, v2, :cond_1

    goto :goto_1

    :cond_1
    aget-object p1, p1, v1

    invoke-virtual {p0, p1, v0}, La/b/a/o/n/d;->a(Ljava/lang/String;I)I

    goto :goto_1

    .line 9
    :cond_2
    sget-object p1, La/b/a/e;->a:La/b/a/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid version string: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GLVersion"

    invoke-interface {p1, v0, p2}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput v1, p0, La/b/a/o/n/d;->a:I

    :goto_1
    return-void
.end method
