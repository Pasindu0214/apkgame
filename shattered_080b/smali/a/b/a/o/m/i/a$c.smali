.class public final enum La/b/a/o/m/i/a$c;
.super Ljava/lang/Enum;
.source "FreeTypeFontGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/o/m/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/b/a/o/m/i/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/b/a/o/m/i/a$c;

.field public static final enum b:La/b/a/o/m/i/a$c;

.field public static final enum c:La/b/a/o/m/i/a$c;

.field public static final enum d:La/b/a/o/m/i/a$c;

.field public static final enum e:La/b/a/o/m/i/a$c;

.field public static final enum f:La/b/a/o/m/i/a$c;

.field public static final enum g:La/b/a/o/m/i/a$c;

.field public static final synthetic h:[La/b/a/o/m/i/a$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, La/b/a/o/m/i/a$c;

    const/4 v1, 0x0

    const-string v2, "None"

    invoke-direct {v0, v2, v1}, La/b/a/o/m/i/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/o/m/i/a$c;->a:La/b/a/o/m/i/a$c;

    .line 2
    new-instance v0, La/b/a/o/m/i/a$c;

    const/4 v2, 0x1

    const-string v3, "Slight"

    invoke-direct {v0, v3, v2}, La/b/a/o/m/i/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/o/m/i/a$c;->b:La/b/a/o/m/i/a$c;

    .line 3
    new-instance v0, La/b/a/o/m/i/a$c;

    const/4 v3, 0x2

    const-string v4, "Medium"

    invoke-direct {v0, v4, v3}, La/b/a/o/m/i/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/o/m/i/a$c;->c:La/b/a/o/m/i/a$c;

    .line 4
    new-instance v0, La/b/a/o/m/i/a$c;

    const/4 v4, 0x3

    const-string v5, "Full"

    invoke-direct {v0, v5, v4}, La/b/a/o/m/i/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/o/m/i/a$c;->d:La/b/a/o/m/i/a$c;

    .line 5
    new-instance v0, La/b/a/o/m/i/a$c;

    const/4 v5, 0x4

    const-string v6, "AutoSlight"

    invoke-direct {v0, v6, v5}, La/b/a/o/m/i/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/o/m/i/a$c;->e:La/b/a/o/m/i/a$c;

    .line 6
    new-instance v0, La/b/a/o/m/i/a$c;

    const/4 v6, 0x5

    const-string v7, "AutoMedium"

    invoke-direct {v0, v7, v6}, La/b/a/o/m/i/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/o/m/i/a$c;->f:La/b/a/o/m/i/a$c;

    .line 7
    new-instance v0, La/b/a/o/m/i/a$c;

    const/4 v7, 0x6

    const-string v8, "AutoFull"

    invoke-direct {v0, v8, v7}, La/b/a/o/m/i/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/o/m/i/a$c;->g:La/b/a/o/m/i/a$c;

    const/4 v8, 0x7

    new-array v8, v8, [La/b/a/o/m/i/a$c;

    .line 8
    sget-object v9, La/b/a/o/m/i/a$c;->a:La/b/a/o/m/i/a$c;

    aput-object v9, v8, v1

    sget-object v1, La/b/a/o/m/i/a$c;->b:La/b/a/o/m/i/a$c;

    aput-object v1, v8, v2

    sget-object v1, La/b/a/o/m/i/a$c;->c:La/b/a/o/m/i/a$c;

    aput-object v1, v8, v3

    sget-object v1, La/b/a/o/m/i/a$c;->d:La/b/a/o/m/i/a$c;

    aput-object v1, v8, v4

    sget-object v1, La/b/a/o/m/i/a$c;->e:La/b/a/o/m/i/a$c;

    aput-object v1, v8, v5

    sget-object v1, La/b/a/o/m/i/a$c;->f:La/b/a/o/m/i/a$c;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, La/b/a/o/m/i/a$c;->h:[La/b/a/o/m/i/a$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/b/a/o/m/i/a$c;
    .locals 1

    .line 1
    const-class v0, La/b/a/o/m/i/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/b/a/o/m/i/a$c;

    return-object p0
.end method

.method public static values()[La/b/a/o/m/i/a$c;
    .locals 1

    .line 1
    sget-object v0, La/b/a/o/m/i/a$c;->h:[La/b/a/o/m/i/a$c;

    invoke-virtual {v0}, [La/b/a/o/m/i/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/b/a/o/m/i/a$c;

    return-object v0
.end method
