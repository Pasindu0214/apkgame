.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite$1;
.super Ljava/lang/Object;
.source "HeroSprite.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;

    .line 2
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->onOperateComplete()V

    return-void
.end method
