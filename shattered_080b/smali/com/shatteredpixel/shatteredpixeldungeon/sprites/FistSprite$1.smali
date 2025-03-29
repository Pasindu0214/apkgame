.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FistSprite$1;
.super Ljava/lang/Object;
.source "FistSprite.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FistSprite;->zap(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FistSprite;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FistSprite;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FistSprite$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FistSprite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FistSprite$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FistSprite;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Yog$BurningFist;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Yog$BurningFist;

    .line 3
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Yog$BurningFist;->zap()V

    .line 4
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    goto :goto_0

    .line 5
    :cond_0
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;

    .line 6
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;->zap()V

    .line 7
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    :goto_0
    return-void
.end method
